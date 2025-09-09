local Clock = require('../libs/utils/Clock')
local utils = require('./utils')

local t = os.time()

local clock1 = Clock()
clock1:on('sec', function(now)
	utils.assertTrue(os.time(now) > t)
	clock1:stop()
end)
clock1:start(true)

local clock2 = Clock()
clock2:on('sec', function(now)
	utils.assertTrue(os.time(now) > t)
	clock2:stop()
end)
clock2:start(false)