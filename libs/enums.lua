local names = {}

local function enum(tbl)
	local call = {}
	for k, v in pairs(tbl) do
		if type(k) ~= 'string' then
			return error('enumeration name must be a string')
		end
		call[v] = k
	end
	return setmetatable({}, {
		__index = function(_, k)
			if tbl[k] == nil then
				return error(string.format('invalid enumeration name: %s', k))
			end
			return tbl[k]
		end,
		__newindex = function()
			return error('cannot overwrite enumeration')
		end,
		__pairs = function()
			local k, v
			return function()
				k, v = next(tbl, k)
				return k, v
			end
		end,
		__call = function(self, v)
			if tbl[v] ~= nil then
				return tbl[v]
			elseif call[v] ~= nil then
				return v
			else
				return error(string.format('invalid %s: %s', names[self], v))
			end
		end,
		__tostring = function(self)
			return 'enumeration: ' .. names[self]
		end
	})
end

local enums = {}
local proxy = setmetatable({}, {
	__index = enums,
	__newindex = function(_, k, v)
		if enums[k] then
			return error('cannot overwrite enumeration')
		end
		v = assert(enum(v))
		names[v] = k
		enums[k] = v
	end,
	__pairs = function()
		local k, v
		return function()
			k, v = next(enums, k)
			return k, v
		end
	end,
})

proxy.timestampStyle = {
	shortTime     = 't',
	longTime      = 'T',
	shortDate     = 'd',
	longDate      = 'D',
	shortDateTime = 'f',
	longDateTime  = 'F',
	relativeTime  = 'R',
}

proxy.logLevel = {
	none     = 0,
	critical = 1,
	error    = 2,
	warning  = 3,
	info     = 4,
	debug    = 5,
}

return proxy