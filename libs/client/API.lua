local json = require('json')
local http = require('coro-http')
local class = require('../class')
local constants = require('../constants')

local API_BASE_URL = constants.API_BASE_URL
local JSON_CONTENT_TYPE = constants.JSON_CONTENT_TYPE
local USER_AGENT = constants.USER_AGENT

local function encodeChar(char)
	return string.format('%%%02X', string.byte(char))
end

local function encodeString(obj)
	return (string.gsub(obj, '[^%w%.%-_~]', encodeChar))
end

local function encodeQuery(query)
	local buf = {}
	for k, v in pairs(query) do
		k = encodeString(k)
		if type(v) == 'table' then
			for _, w in ipairs(v) do
				table.insert(buf, string.format('%s=%s', k, encodeString(w)))
			end
		else
			table.insert(buf, string.format('%s=%s', k, encodeString(v)))
		end
	end
	return table.concat(buf, '&')
end

local API = class('API')

function API:__init(client)
	self._client = client
end

function API:log(level, res, method, url)
	return self._client:log(level, '%s - %s : %s %s', res.code, res.reason, method, url)
end

function API:setToken(token)
	local prefix = self._client._tokenPrefix
	if token:find(prefix) == 1 then
		self._token = token
	else
		self._token = prefix .. token
	end
end

function API:request(endpoint, parameters, query, body)

	local method = endpoint.method
	local path = endpoint.path

	if parameters and #parameters > 0 then
		path = path:format(table.unpack(parameters))
	end

	local url = API_BASE_URL .. path
	if query and next(query) then
		url = url .. '?' .. encodeQuery(query)
	end

	local req = {
		{'User-Agent', USER_AGENT},
	}

	if self._token then
		table.insert(req, {'Authorization', self._token})
	end

	if endpoint.content and endpoint.content[JSON_CONTENT_TYPE] then
		body = body and json.encode(body) or '{}'
		table.insert(req, {'Content-Type', JSON_CONTENT_TYPE})
		table.insert(req, {'Content-Length', #body})
	end

	local success, res, msg = pcall(http.request, method, url, req, body)

	if not success then
		self._client:log('error', 'Client error: %s', res)
		return nil, res
	end

	local head = {}
	for _, v in ipairs(res --[[@as table]]) do
		head[string.lower(v[1])] = v[2]
	end

	local data = head['content-type'] == JSON_CONTENT_TYPE and json.decode(msg, 1, json.null) or {}

	if res.code < 300 then
		self:log('debug', res, method, url)
		return data
	else
		self:log('error', res, method, url)
		return nil, msg
	end

end

return API
