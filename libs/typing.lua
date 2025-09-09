local json = require('json')

local function typeError(expected, received)
	return error(string.format('expected %s, received %s', expected, received), 2)
end

local function opt(obj, fn, extra)
	if obj == nil or obj == json.null then
		return obj
	elseif extra then
		return fn(extra, obj)
	else
		return fn(obj)
	end
end

local function checkType(expected, obj)
	local received = type(obj)
	if received ~= expected then
		typeError(expected, received)
	end
	return obj
end

local function checkValue(obj)
	if obj == nil then
		typeError('value', 'nil')
	end
	return obj
end

local function checkStringStrict(obj)
	return checkType('string', obj)
end

local function checkNumber(obj, base, mn, mx)
	local success, n = pcall(tonumber, obj, base)
	if not success or not n then
		typeError('number', type(obj))
	elseif mn and n < mn then
		typeError('minimum ' .. mn, n)
	elseif mx and n > mx then
		typeError('maximum ' .. mx, n)
	end
	return n
end

local function checkInteger(obj, base, mn, mx)
	local success, n = pcall(tonumber, obj, base)
	if not success or not n then
		typeError('integer', type(obj))
	elseif n % 1 ~= 0 then
		typeError('integer', n)
	elseif mn and n < mn then
		typeError('minimum ' .. mn, n)
	elseif mx and n > mx then
		typeError('maximum ' .. mx, n)
	end
	return n
end

local function checkCallable(obj)
	local t = type(obj)
	if t == 'function' then
		return obj
	end
	local meta = getmetatable(obj)
	if meta and type(meta.__call) == 'function' then
		return obj
	end
	typeError('callable', t)
end

local function checkSnowflake(obj)
	local t = type(obj)
	if t == 'string' and tonumber(obj) then
		return obj
	elseif t == 'number' and obj < 2^32 then
		return string.format('%i', obj)
	elseif t == 'table' then
		return checkSnowflake(obj.id)
	end
	typeError('snowflake', t)
end

local function checkOptions(customOptions, defaultOptions)
	local options = {}
	for k, v in pairs(checkType('table', defaultOptions)) do
		options[k] = v[1]
	end
	if customOptions then
		for k, v in pairs(checkType('table', customOptions)) do
			local default = defaultOptions[k]
			if not default then
				error(string.format('invalid option %q', k))
			end
			local success, res = pcall(default[2], v)
			if not success then
				error(string.format('invalid option %q: %s', k, res))
			end
			options[k] = res
		end
	end
	return options
end

return {
	checkType = checkType,
	checkValue = checkValue,
	checkStringStrict = checkStringStrict,
	checkNumber = checkNumber,
	checkInteger = checkInteger,
	checkCallable = checkCallable,
	checkSnowflake = checkSnowflake,
	checkOptions = checkOptions,
}