local class = require('../class')
local enums = require('../enums')
local endpoints = require('../endpoints')
local typing = require('../typing')
local package = require('../../package')

local API = require('./API')
local Logger = require('../utils/Logger')
local Emitter = require('../utils/Emitter')

local checkOptions = typing.checkOptions
local checkStringStrict = typing.checkStringStrict

local Client = class('Client', Emitter)

local defaultOptions = {
	tokenPrefix = {'Bot ', checkStringStrict},
	logLevel = {enums.logLevel.info, enums.logLevel},
}

function Client:__init(options)
	Emitter.__init(self)
	options = checkOptions(options, defaultOptions)
	self._tokenPrefix = options.tokenPrefix
	self._logger = Logger(options.logLevel)
	self._api = API(self)
end

function Client:run(token)

	token = checkStringStrict(token)
	self:log('info', 'Discordia %s', package.version)
	self:log('info', 'Connecting to Discord...')

	local api = self._api
	api:setToken(token)

end

function Client:log(...)
	return self._logger:log(...)
end

return Client