local enums = {}

local function new(name, tbl)

	if enums[name] then
		return error('cannot overwrite enumeration')
	end

	local call = {}
	for k, v in pairs(tbl) do
		if type(k) ~= 'string' then
			return error('enumeration name must be a string')
		end
		call[v] = k
	end

	enums[name] = setmetatable({}, {
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
		__call = function(_, v)
			if tbl[v] ~= nil then
				return tbl[v]
			elseif call[v] ~= nil then
				return v
			else
				return error(string.format('invalid %s: %s', name, v))
			end
		end,
		__tostring = function()
			return 'enumeration: ' .. name
		end
	})

	return enums[name]

end

local function enum(name)
	return function(tbl)
		return new(name, tbl)
	end
end

enum 'timestampStyle' {
	shortTime     = 't',
	longTime      = 'T',
	shortDate     = 'd',
	longDate      = 'D',
	shortDateTime = 'f',
	longDateTime  = 'F',
	relativeTime  = 'R',
}

enum 'logLevel' {
	none     = 0,
	critical = 1,
	error    = 2,
	warning  = 3,
	info     = 4,
	debug    = 5,
}

---- begin generated code ----

enum "afkTimeout" {
	oneMinute = 60,
	fiveMinutes = 300,
	fifteenMinutes = 900,
	thirtyMinutes = 1800,
	oneHour = 3600,
}

enum "allowedMentionType" {
	users = "users", -- Controls role mentions
	roles = "roles", -- Controls user mentions
	everyone = "everyone", -- Controls @everyone and @here mentions
}

enum "applicationCommandHandler" {
}

enum "applicationCommandOptionType" {
	subCommand = 1, -- A sub-action within a command or group
	subCommandGroup = 2, -- A group of subcommands
	string = 3, -- A string option
	integer = 4, -- An integer option. Any integer between -2^53 and 2^53 is a valid value
	boolean = 5, -- A boolean option
	user = 6, -- A snowflake option that represents a User
	channel = 7, -- A snowflake option that represents a Channel. Includes all channel types and categories
	role = 8, -- A snowflake option that represents a Role
	mentionable = 9, -- A snowflake option that represents anything you can mention
	number = 10, -- A number option. Any double between -2^53 and 2^53 is a valid value
	attachment = 11, -- An attachment option
}

enum "applicationCommandPermissionType" {
	role = 1, -- This permission is for a role.
	user = 2, -- This permission is for a user.
	channel = 3, -- This permission is for a channel.
}

enum "applicationCommandType" {
	chat = 1, -- Slash commands; a text-based command that shows up when a user types /
	user = 2, -- A UI-based command that shows up when you right click or tap on a user
	message = 3, -- A UI-based command that shows up when you right click or tap on a message
	primaryEntryPoint = 4, -- A command that represents the primary way to use an application (e.g. launching an Activity)
}

enum "applicationExplicitContentFilterType" {
	inherit = 0, -- inherit guild content filter setting
	always = 1, -- interactions will always be scanned
}

enum "applicationIdentityProviderAuthType" {
	oidc = "OIDC",
	epicOnlineServicesAccessToken = "EPIC_ONLINE_SERVICES_ACCESS_TOKEN",
	epicOnlineServicesIdToken = "EPIC_ONLINE_SERVICES_ID_TOKEN",
	steamSessionTicket = "STEAM_SESSION_TICKET",
	unityServicesIdToken = "UNITY_SERVICES_ID_TOKEN",
}

enum "applicationIntegrationType" {
	guildInstall = 0, -- For Guild install.
	userInstall = 1, -- For User install.
}

enum "applicationType" {
	guildRoleSubscriptions = 4,
}

enum "auditLogActionType" {
	guildUpdate = 1,
	channelCreate = 10,
	channelUpdate = 11,
	channelDelete = 12,
	channelOverwriteCreate = 13,
	channelOverwriteUpdate = 14,
	channelOverwriteDelete = 15,
	memberKick = 20,
	memberPrune = 21,
	memberBanAdd = 22,
	memberBanRemove = 23,
	memberUpdate = 24,
	memberRoleUpdate = 25,
	memberMove = 26,
	memberDisconnect = 27,
	botAdd = 28,
	roleCreate = 30,
	roleUpdate = 31,
	roleDelete = 32,
	inviteCreate = 40,
	inviteUpdate = 41,
	inviteDelete = 42,
	webhookCreate = 50,
	webhookUpdate = 51,
	webhookDelete = 52,
	emojiCreate = 60,
	emojiUpdate = 61,
	emojiDelete = 62,
	messageDelete = 72,
	messageBulkDelete = 73,
	messagePin = 74,
	messageUnpin = 75,
	integrationCreate = 80,
	integrationUpdate = 81,
	integrationDelete = 82,
	stageInstanceCreate = 83,
	stageInstanceUpdate = 84,
	stageInstanceDelete = 85,
	stickerCreate = 90,
	stickerUpdate = 91,
	stickerDelete = 92,
	guildScheduledEventCreate = 100,
	guildScheduledEventUpdate = 101,
	guildScheduledEventDelete = 102,
	threadCreate = 110,
	threadUpdate = 111,
	threadDelete = 112,
	applicationCommandPermissionUpdate = 121,
	soundboardSoundCreate = 130,
	soundboardSoundUpdate = 131,
	soundboardSoundDelete = 132,
	autoModerationRuleCreate = 140,
	autoModerationRuleUpdate = 141,
	autoModerationRuleDelete = 142,
	autoModerationBlockMessage = 143,
	autoModerationFlagToChannel = 144,
	autoModerationUserCommDisabled = 145,
	autoModerationQuarantineUser = 146,
	creatorMonetizationRequestCreated = 150,
	creatorMonetizationTermsAccepted = 151,
	onboardingPromptCreate = 163,
	onboardingPromptUpdate = 164,
	onboardingPromptDelete = 165,
	onboardingCreate = 166,
	onboardingUpdate = 167,
	guildHomeFeatureItem = 171,
	guildHomeRemoveItem = 172,
	harmfulLinksBlockedMessage = 180,
	homeSettingsCreate = 190,
	homeSettingsUpdate = 191,
	voiceChannelStatusCreate = 192,
	voiceChannelStatusDelete = 193,
	guildProfileUpdate = 211,
}

enum "automodActionType" {
	blockMessage = 1, -- Block a user's message and prevent it from being posted. A custom explanation can be specified and shown to members whenever their message is blocked
	flagToChannel = 2, -- Send a system message to a channel in order to log the user message that triggered the rule
	userCommunicationDisabled = 3, -- Temporarily disable a user's ability to communicate in the server (timeout)
	quarantineUser = 4, -- Prevent a user from interacting in the server
}

enum "automodEventType" {
	messageSend = 1, -- A user submitted a message to a channel
	guildMemberJoinOrUpdate = 2, -- A user is attempting to join the server or a member's properties were updated.
}

enum "automodKeywordPresetType" {
	profanity = 1, -- Words and phrases that may be considered profanity
	sexualContent = 2, -- Words and phrases that may be considered as sexual content
	slurs = 3, -- Words and phrases that may be considered slurs and hate speech
}

enum "automodTriggerType" {
	keyword = 1, -- Check if content contains words from a list of keywords or matches regex
	spamLink = 2, -- DEPRECATED
	mlSpam = 3, -- Check if content represents generic spam
	defaultKeywordList = 4, -- Check if content contains words from internal pre-defined wordsets
	mentionSpam = 5, -- Check if content contains more unique mentions than allowed
}

enum "availableLocalesEnum" {
	ar = "ar", -- The ar locale
	bg = "bg", -- The bg locale
	cs = "cs", -- The cs locale
	da = "da", -- The da locale
	de = "de", -- The de locale
	el = "el", -- The el locale
	["en-gb"] = "en-GB", -- The en-GB locale
	["en-us"] = "en-US", -- The en-US locale
	["es-419"] = "es-419", -- The es-419 locale
	["es-es"] = "es-ES", -- The es-ES locale
	fi = "fi", -- The fi locale
	fr = "fr", -- The fr locale
	he = "he", -- The he locale
	hi = "hi", -- The hi locale
	hr = "hr", -- The hr locale
	hu = "hu", -- The hu locale
	id = "id", -- The id locale
	it = "it", -- The it locale
	ja = "ja", -- The ja locale
	ko = "ko", -- The ko locale
	lt = "lt", -- The lt locale
	nl = "nl", -- The nl locale
	no = "no", -- The no locale
	pl = "pl", -- The pl locale
	["pt-br"] = "pt-BR", -- The pt-BR locale
	ro = "ro", -- The ro locale
	ru = "ru", -- The ru locale
	["sv-se"] = "sv-SE", -- The sv-SE locale
	th = "th", -- The th locale
	tr = "tr", -- The tr locale
	uk = "uk", -- The uk locale
	vi = "vi", -- The vi locale
	["zh-cn"] = "zh-CN", -- The zh-CN locale
	["zh-tw"] = "zh-TW", -- The zh-TW locale
}

enum "buttonStyleType" {
	primary = 1,
	secondary = 2,
	success = 3,
	danger = 4,
	link = 5,
	premium = 6,
}

enum "channelPermissionOverwrite" {
	role = 0,
	member = 1,
}

enum "channelType" {
	dm = 1, -- A direct message between users
	groupDm = 3, -- A direct message between multiple users
	guildText = 0, -- A text channel within a server
	guildVoice = 2, -- A voice channel within a server
	guildCategory = 4, -- An organizational category that contains up to 50 channels
	guildAnnouncement = 5, -- A channel that users can follow and crosspost into their own server (formerly news channels)
	announcementThread = 10, -- A temporary sub-channel within a GUILD_ANNOUNCEMENT channel
	publicThread = 11, -- A temporary sub-channel within a GUILD_TEXT or GUILD_THREADS_ONLY channel type set
	privateThread = 12, -- A temporary sub-channel within a GUILD_TEXT channel that is only viewable by those invited and those with the MANAGE_THREADS permission
	guildStageVoice = 13, -- A voice channel for hosting events with an audience
	guildDirectory = 14, -- The channel in a hub containing the listed servers
	guildForum = 15, -- Channel that can only contain threads
}

enum "connectedAccountProvider" {
	battlenet = "battlenet",
	bluesky = "bluesky",
	bungie = "bungie",
	ebay = "ebay",
	epicGames = "epicgames",
	facebook = "facebook",
	github = "github",
	instagram = "instagram",
	mastodon = "mastodon",
	leagueOfLegends = "leagueoflegends",
	paypal = "paypal",
	playstation = "playstation",
	reddit = "reddit",
	riotGames = "riotgames",
	roblox = "roblox",
	skype = "skype",
	spotify = "spotify",
	steam = "steam",
	tiktok = "tiktok",
	twitch = "twitch",
	twitter = "twitter",
	xbox = "xbox",
	youtube = "youtube",
	domain = "domain",
}

enum "connectedAccountVisibility" {
	none = 0,
	everyone = 1,
}

enum "embeddedActivityLocationKind" {
	guildChannel = "gc", -- guild channel
	privateChannel = "pc", -- private channel
}

enum "entitlementOwnerType" {
}

enum "entitlementTenantFulfillmentStatusResponse" {
	unknown = 0,
	fulfillmentNotNeeded = 1,
	fulfillmentNeeded = 2,
	fulfilled = 3,
	fulfillmentFailed = 4,
	unfulfillmentNeeded = 5,
	unfulfilled = 6,
	unfulfillmentFailed = 7,
}

enum "entitlementType" {
	applicationSubscription = 8,
	questReward = 10,
}

enum "forumLayout" {
	default = 0, -- No default has been set for forum channel
	list = 1, -- Display posts as a list
	grid = 2, -- Display posts as a collection of tiles
}

enum "guildExplicitContentFilterType" {
	disabled = 0, -- media content will not be scanned
	membersWithoutRoles = 1, -- media content sent by members without roles will be scanned
	allMembers = 2, -- media content sent by all members will be scanned
}

enum "guildFeature" {
	animatedBanner = "ANIMATED_BANNER", -- guild has access to set an animated guild banner image
	animatedIcon = "ANIMATED_ICON", -- guild has access to set an animated guild icon
	applicationCommandPermissionsV2 = "APPLICATION_COMMAND_PERMISSIONS_V2", -- guild is using the old permissions configuration behavior
	autoModeration = "AUTO_MODERATION", -- guild has set up auto moderation rules
	banner = "BANNER", -- guild has access to set a guild banner image
	community = "COMMUNITY", -- guild can enable welcome screen, Membership Screening, stage channels and discovery, and             receives community updates
	creatorMonetizableProvisional = "CREATOR_MONETIZABLE_PROVISIONAL", -- guild has enabled monetization
	creatorStorePage = "CREATOR_STORE_PAGE", -- guild has enabled the role subscription promo page
	developerSupportServer = "DEVELOPER_SUPPORT_SERVER", -- guild has been set as a support server on the App Directory
	discoverable = "DISCOVERABLE", -- guild is able to be discovered in the directory
	featurable = "FEATURABLE", -- guild is able to be featured in the directory
	invitesDisabled = "INVITES_DISABLED", -- guild has paused invites, preventing new users from joining
	inviteSplash = "INVITE_SPLASH", -- guild has access to set an invite splash background
	memberVerificationGateEnabled = "MEMBER_VERIFICATION_GATE_ENABLED", -- guild has enabled Membership Screening
	moreStickers = "MORE_STICKERS", -- guild has increased custom sticker slots
	news = "NEWS", -- guild has access to create announcement channels
	partnered = "PARTNERED", -- guild is partnered
	previewEnabled = "PREVIEW_ENABLED", -- guild can be previewed before joining via Membership Screening or the directory
	raidAlertsDisabled = "RAID_ALERTS_DISABLED", -- guild has disabled activity alerts in the configured safety alerts channel
	roleIcons = "ROLE_ICONS", -- guild is able to set role icons
	roleSubscriptionsAvailableForPurchase = "ROLE_SUBSCRIPTIONS_AVAILABLE_FOR_PURCHASE", -- guild has role subscriptions that can be purchased
	roleSubscriptionsEnabled = "ROLE_SUBSCRIPTIONS_ENABLED", -- guild has enabled role subscriptions
	ticketedEventsEnabled = "TICKETED_EVENTS_ENABLED", -- guild has enabled ticketed events
	vanityUrl = "VANITY_URL", -- guild has access to set a vanity URL
	verified = "VERIFIED", -- guild is verified
	vipRegions = "VIP_REGIONS", -- guild has access to set 384kbps bitrate in voice (previously VIP voice servers)
	welcomeScreenEnabled = "WELCOME_SCREEN_ENABLED", -- guild has enabled the welcome screen
}

enum "guildMFALevel" {
	none = 0, -- Guild has no MFA/2FA requirement for moderation actions
	elevated = 1, -- Guild has a 2FA requirement for moderation actions
}

enum "guildNSFWContentLevel" {
	default = 0,
	explicit = 1,
	safe = 2,
	ageRestricted = 3,
}

enum "guildOnboardingMode" {
	onboardingDefault = 0, -- Only Default Channels considered in constraints
	onboardingAdvanced = 1, -- Default Channels and Onboarding Prompts considered in constraints
}

enum "guildScheduledEventEntityType" {
	none = 0,
	stageInstance = 1,
	voice = 2,
	external = 3,
}

enum "guildScheduledEventPrivacyLevel" {
	guildOnly = 2, -- the scheduled event is only accessible to guild members
}

enum "guildScheduledEventStatuse" {
	scheduled = 1,
	active = 2,
	completed = 3,
	canceled = 4,
}

enum "integrationExpireBehaviorType" {
	removeRole = 0, -- Remove role
	kick = 1, -- Kick
}

enum "integrationExpireGracePeriodType" {
	oneDay = 1, -- 1 day
	threeDays = 3, -- 3 days
	sevenDays = 7, -- 7 days
	fourteenDays = 14, -- 14 days
	thirtyDays = 30, -- 30 days
}

enum "integrationType" {
	discord = "discord",
	twitch = "twitch",
	youtube = "youtube",
	guildSubscription = "guild_subscription",
}

enum "interactionCallbackType" {
	pong = 1,
	channelMessageWithSource = 4,
	deferredChannelMessageWithSource = 5,
	deferredUpdateMessage = 6,
	updateMessage = 7,
	applicationCommandAutocompleteResult = 8,
	modal = 9,
	launchActivity = 12,
}

enum "interactionContextType" {
	guild = 0, -- This command can be used within a Guild.
	botDm = 1, -- This command can be used within a DM with this application's bot.
	privateChannel = 2, -- This command can be used within DMs and Group DMs with users.
}

enum "interactionType" {
	ping = 1, -- Sent by Discord to validate your application's interaction handler
	applicationCommand = 2, -- Sent when a user uses an application command
	messageComponent = 3, -- Sent when a user interacts with a message component previously sent by your application
	applicationCommandAutocomplete = 4, -- Sent when a user is filling in an autocomplete option in a chat command
	modalSubmit = 5, -- Sent when a user submits a modal previously sent by your application
}

enum "inviteTargetType" {
	stream = 1,
	embeddedApplication = 2,
	roleSubscriptionsPurchase = 3,
}

enum "inviteType" {
	guild = 0,
	groupDm = 1,
	friend = 2,
}

enum "messageComponentSeparatorSpacingSize" {
	small = 1, -- Small spacing
	large = 2, -- Large spacing
}

enum "messageComponentType" {
	actionRow = 1, -- Container for other components
	button = 2, -- Button object
	stringSelect = 3, -- Select menu for picking from defined text options
	textInput = 4, -- Text input object
	userSelect = 5, -- Select menu for users
	roleSelect = 6, -- Select menu for roles
	mentionableSelect = 7, -- Select menu for mentionables (users and roles)
	channelSelect = 8, -- Select menu for channels
	section = 9, -- Section component
	textDisplay = 10, -- Text component
	thumbnail = 11, -- Thumbnail component
	mediaGallery = 12, -- Media gallery component
	file = 13, -- File component
	separator = 14, -- Separator component
	container = 17, -- Container component
	label = 18, -- Label component
}

enum "messageReferenceType" {
	default = 0, -- Reference to a message
}

enum "messageShareCustomUserThemeBaseTheme" {
	unset = 0, -- No base theme
	dark = 1, -- Dark base theme
	light = 2, -- Light base theme
	darker = 3, -- Darker base theme
	midnight = 4, -- Midnight base theme
}

enum "messageType" {
	default = 0,
	recipientAdd = 1,
	recipientRemove = 2,
	call = 3,
	channelNameChange = 4,
	channelIconChange = 5,
	channelPinnedMessage = 6,
	userJoin = 7,
	guildBoost = 8,
	guildBoostTier1 = 9,
	guildBoostTier2 = 10,
	guildBoostTier3 = 11,
	channelFollowAdd = 12,
	guildDiscoveryDisqualified = 14,
	guildDiscoveryRequalified = 15,
	guildDiscoveryGracePeriodInitialWarning = 16,
	guildDiscoveryGracePeriodFinalWarning = 17,
	threadCreated = 18,
	reply = 19,
	chatInputCommand = 20,
	threadStarterMessage = 21,
	guildInviteReminder = 22,
	contextMenuCommand = 23,
	autoModerationAction = 24,
	roleSubscriptionPurchase = 25,
	interactionPremiumUpsell = 26,
	stageStart = 27,
	stageEnd = 28,
	stageSpeaker = 29,
	stageTopic = 31,
	guildApplicationPremiumSubscription = 32,
	guildIncidentAlertModeEnabled = 36,
	guildIncidentAlertModeDisabled = 37,
	guildIncidentReportRaid = 38,
	guildIncidentReportFalseAlarm = 39,
	pollResult = 46,
	hdStreamingUpgraded = 55,
}

enum "metadataItemType" {
	integerLessThanEqual = 1, -- the metadata value (integer) is less than or equal to the guild's configured value (integer)
	integerGreaterThanEqual = 2, -- the metadata value (integer) is greater than or equal to the guild's configured value (integer)
	integerEqual = 3, -- the metadata value (integer) is equal to the guild's configured value (integer)
	integerNotEqual = 4, -- the metadata value (integer) is not equal to the guild's configured value (integer)
	datetimeLessThanEqual = 5, -- the metadata value (ISO8601 string) is less than or equal to the guild's configured value (integer; days before current date)
	datetimeGreaterThanEqual = 6, -- the metadata value (ISO8601 string) is greater than or equal to the guild's configured value (integer; days before current date)
	booleanEqual = 7, -- the metadata value (integer) is equal to the guild's configured value (integer; 1)
	booleanNotEqual = 8, -- the metadata value (integer) is not equal to the guild's configured value (integer; 1)
}

enum "nameplatePalette" {
}

enum "newMemberActionType" {
	view = 0,
	talk = 1,
}

enum "oAuth2Scope" {
	identify = "identify", -- allows /users/@me without email
	email = "email", -- enables /users/@me to return an email
	connections = "connections", -- allows /users/@me/connections to return linked third-party accounts
	guilds = "guilds", -- allows /users/@me/guilds to return basic information about all of a user's guilds
	guildsJoin = "guilds.join", -- allows /guilds/{guild.id}/members/{user.id} to be used for joining users to a guild
	guildsMembersRead = "guilds.members.read", -- allows /users/@me/guilds/{guild.id}/member to return a user's member information in a guild
	gdmJoin = "gdm.join", -- allows your app to join users to a group dm
	bot = "bot", -- for oauth2 bots, this puts the bot in the user's selected guild by default
	rpc = "rpc", -- for local rpc server access, this allows you to control a user's local Discord client - requires Discord approval
	rpcNotificationsRead = "rpc.notifications.read", -- for local rpc server access, this allows you to receive notifications pushed out to the user - requires Discord approval
	rpcVoiceRead = "rpc.voice.read", -- for local rpc server access, this allows you to read a user's voice settings and listen for voice events - requires Discord approval
	rpcVoiceWrite = "rpc.voice.write", -- for local rpc server access, this allows you to update a user's voice settings - requires Discord approval
	rpcVideoRead = "rpc.video.read", -- for local rpc server access, this allows you to read a user's video status - requires Discord approval
	rpcVideoWrite = "rpc.video.write", -- for local rpc server access, this allows you to update a user's video settings - requires Discord approval
	rpcScreenshareRead = "rpc.screenshare.read", -- for local rpc server access, this allows you to read a user's screenshare status- requires Discord approval
	rpcScreenshareWrite = "rpc.screenshare.write", -- for local rpc server access, this allows you to update a user's screenshare settings- requires Discord approval
	rpcActivitiesWrite = "rpc.activities.write", -- for local rpc server access, this allows you to update a user's activity - requires Discord approval
	webhookIncoming = "webhook.incoming", -- this generates a webhook that is returned in the oauth token response for authorization code grants
	messagesRead = "messages.read", -- for local rpc server api access, this allows you to read messages from all client channels (otherwise restricted to channels/guilds your app creates)
	applicationsBuildsUpload = "applications.builds.upload", -- allows your app to upload/update builds for a user's applications - requires Discord approval
	applicationsBuildsRead = "applications.builds.read", -- allows your app to read build data for a user's applications
	applicationsCommands = "applications.commands", -- allows your app to use commands in a guild
	applicationsCommandsPermissionsUpdate = "applications.commands.permissions.update", -- allows your app to update permissions for its commands in a guild a user has permissions to
	applicationsCommandsUpdate = "applications.commands.update", -- allows your app to update its commands using a Bearer token - client credentials grant only
	applicationsStoreUpdate = "applications.store.update", -- allows your app to read and update store data (SKUs, store listings, achievements, etc.) for a user's applications
	applicationsEntitlements = "applications.entitlements", -- allows your app to read entitlements for a user's applications
	activitiesRead = "activities.read", -- allows your app to fetch data from a user's "Now Playing/Recently Played" list - requires Discord approval
	activitiesWrite = "activities.write", -- allows your app to update a user's activity - requires Discord approval (NOT REQUIRED FOR GAMESDK ACTIVITY MANAGER)
	activitiesInvitesWrite = "activities.invites.write", -- allows your app to send activity invites - requires Discord approval (NOT REQUIRED FOR GAMESDK ACTIVITY MANAGER)
	relationshipsRead = "relationships.read", -- allows your app to know a user's friends and implicit relationships - requires Discord approval
	voice = "voice", -- allows your app to connect to voice on user's behalf and see all the voice members - requires Discord approval
	dmChannelsRead = "dm_channels.read", -- allows your app to see information about the user's DMs and group DMs - requires Discord approval
	roleConnectionsWrite = "role_connections.write", -- allows your app to update a user's connection and metadata for the app
	openid = "openid", -- for OpenID Connect, this allows your app to receive user id and basic profile information
}

enum "onboardingPromptType" {
	multipleChoice = 0, -- Multiple choice options
	dropdown = 1, -- Many options shown as a dropdown
}

enum "pollLayoutType" {
}

enum "premiumGuildTier" {
	none = 0, -- Guild has not unlocked any Server Boost perks
	tier1 = 1, -- Guild has unlocked Server Boost level 1 perks
	tier2 = 2, -- Guild has unlocked Server Boost level 2 perks
	tier3 = 3, -- Guild has unlocked Server Boost level 3 perks
}

enum "premiumType" {
	none = 0, -- None
	tier1 = 1, -- Nitro Classic
	tier2 = 2, -- Nitro Standard
	tier0 = 3, -- Nitro Basic
}

enum "purchaseType" {
	guildProduct = 0,
}

enum "reactionType" {
	normal = 0, -- Normal reaction type
	burst = 1, -- Burst reaction type
}

enum "snowflakeSelectDefaultValueType" {
	user = "user",
	role = "role",
	channel = "channel",
}

enum "sortingOrder" {
	asc = "asc",
	desc = "desc",
}

enum "stageInstancesPrivacyLevel" {
	public = 1, -- The Stage instance is visible publicly. (deprecated)
	guildOnly = 2, -- The Stage instance is visible publicly. (deprecated)
}

enum "stickerFormatType" {
	png = 1,
	apng = 2,
	lottie = 3,
	gif = 4,
}

enum "stickerType" {
	standard = 1, -- an official sticker in a pack, part of Nitro or in a removed purchasable pack
	guild = 2, -- a sticker uploaded to a guild for the guild's members
}

enum "teamMembershipState" {
	invited = 1, -- User has been invited to the team.
	accepted = 2, -- User has accepted the team invitation.
}

enum "textInputStyleType" {
	short = 1, -- Single-line input
	paragraph = 2, -- Multi-line input
}

enum "threadAutoArchiveDuration" {
	oneHour = 60, -- One hour
	oneDay = 1440, -- One day
	threeDay = 4320, -- Three days
	sevenDay = 10080, -- Seven days
}

enum "threadSearchTagSetting" {
	matchAll = "match_all", -- The thread tags must contain all tags in the search query
	matchSome = "match_some", -- The thread tags must contain at least one of tags in the search query
}

enum "threadSortOrder" {
	latestActivity = 0, -- Sort forum posts by activity
	creationDate = 1, -- Sort forum posts by creation time (from most recent to oldest)
}

enum "threadSortingMode" {
	relevance = "relevance",
	creationTime = "creation_time",
	lastMessageTime = "last_message_time",
	archiveTime = "archive_time",
}

enum "userNotificationSetting" {
	allMessages = 0, -- members will receive notifications for all messages by default
	onlyMentions = 1, -- members will receive notifications only for messages that @mention them by default
}

enum "verificationLevel" {
	none = 0, -- unrestricted
	low = 1, -- must have verified email on account
	medium = 2, -- must be registered on Discord for longer than 5 minutes
	high = 3, -- must be a member of the server for longer than 10 minutes
	veryHigh = 4, -- must have a verified phone number
}

enum "videoQualityMode" {
	auto = 1, -- Discord chooses the quality for optimal performance
	full = 2, -- 720p
}

enum "webhookType" {
	guildIncoming = 1, -- Incoming Webhooks can post messages to channels with a generated token
	channelFollower = 2, -- Channel Follower Webhooks are internal webhooks used with Channel Following to post new messages into channels
	applicationIncoming = 3, -- Application webhooks are webhooks used with Interactions
}

enum "widgetImageStyle" {
	shield = "shield", -- shield style widget with Discord icon and guild members online count
	banner1 = "banner1", -- large image with guild icon, name and online count. "POWERED BY DISCORD" as the footer of the widget
	banner2 = "banner2", -- smaller widget style with guild icon, name and online count. Split on the right with Discord logo
	banner3 = "banner3", -- large image with guild icon, name and online count. In the footer, Discord logo on the left and "Chat Now" on the right
	banner4 = "banner4", -- large Discord logo at the top of the widget. Guild icon, name and online count in the middle portion of the widget and a "JOIN MY SERVER" button at the bottom
}

enum "widgetUserDiscriminator" {
	zeroes = "0000",
}

---- end generated code ----

return setmetatable({}, {
	__index = enums,
	__pairs = function()
		local k, v
		return function()
			k, v = next(enums, k)
			return k, v
		end
	end,
})