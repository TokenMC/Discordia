local package = require('../package')

return {
	MIN_BITRATE = 8000,
	MAX_BITRATE = 128000,
	NS_PER_US = 1000,
	US_PER_MS = 1000,
	MS_PER_S = 1000,
	S_PER_MIN = 60,
	MIN_PER_HOUR = 60,
	HOUR_PER_DAY = 24,
	DAY_PER_WEEK = 7,
	DISCORD_EPOCH = 1420070400000,
	JSON_CONTENT_TYPE = 'application/json',
	USER_AGENT = ('DiscordBot (%s, %s)'):format(package.homepage, package.version),
	API_BASE_URL = 'https://discord.com/api/v10',
}