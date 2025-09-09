local endpoints = {}
endpoints.get_my_application = {
	method = "GET",
	path = "/applications/@me",
}

endpoints.update_my_application = {
	method = "PATCH",
	path = "/applications/@me",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_application = {
	method = "GET",
	path = "/applications/%s",
}

endpoints.update_application = {
	method = "PATCH",
	path = "/applications/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.applications_get_activity_instance = {
	method = "GET",
	path = "/applications/%s/activity-instances/%s",
}

endpoints.upload_application_attachment = {
	method = "POST",
	path = "/applications/%s/attachment",
	content = {
		["multipart/form-data"] = true,
	},
}

endpoints.bulk_set_application_commands = {
	method = "PUT",
	path = "/applications/%s/commands",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_application_command = {
	method = "POST",
	path = "/applications/%s/commands",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_application_commands = {
	method = "GET",
	path = "/applications/%s/commands",
}

endpoints.delete_application_command = {
	method = "DELETE",
	path = "/applications/%s/commands/%s",
}

endpoints.get_application_command = {
	method = "GET",
	path = "/applications/%s/commands/%s",
}

endpoints.update_application_command = {
	method = "PATCH",
	path = "/applications/%s/commands/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_application_emoji = {
	method = "POST",
	path = "/applications/%s/emojis",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_application_emojis = {
	method = "GET",
	path = "/applications/%s/emojis",
}

endpoints.delete_application_emoji = {
	method = "DELETE",
	path = "/applications/%s/emojis/%s",
}

endpoints.get_application_emoji = {
	method = "GET",
	path = "/applications/%s/emojis/%s",
}

endpoints.update_application_emoji = {
	method = "PATCH",
	path = "/applications/%s/emojis/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_entitlement = {
	method = "POST",
	path = "/applications/%s/entitlements",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_entitlements = {
	method = "GET",
	path = "/applications/%s/entitlements",
}

endpoints.delete_entitlement = {
	method = "DELETE",
	path = "/applications/%s/entitlements/%s",
}

endpoints.get_entitlement = {
	method = "GET",
	path = "/applications/%s/entitlements/%s",
}

endpoints.consume_entitlement = {
	method = "POST",
	path = "/applications/%s/entitlements/%s/consume",
}

endpoints.bulk_set_guild_application_commands = {
	method = "PUT",
	path = "/applications/%s/guilds/%s/commands",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_application_command = {
	method = "POST",
	path = "/applications/%s/guilds/%s/commands",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_application_commands = {
	method = "GET",
	path = "/applications/%s/guilds/%s/commands",
}

endpoints.list_guild_application_command_permissions = {
	method = "GET",
	path = "/applications/%s/guilds/%s/commands/permissions",
}

endpoints.delete_guild_application_command = {
	method = "DELETE",
	path = "/applications/%s/guilds/%s/commands/%s",
}

endpoints.get_guild_application_command = {
	method = "GET",
	path = "/applications/%s/guilds/%s/commands/%s",
}

endpoints.update_guild_application_command = {
	method = "PATCH",
	path = "/applications/%s/guilds/%s/commands/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_application_command_permissions = {
	method = "GET",
	path = "/applications/%s/guilds/%s/commands/%s/permissions",
}

endpoints.set_guild_application_command_permissions = {
	method = "PUT",
	path = "/applications/%s/guilds/%s/commands/%s/permissions",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_application_role_connections_metadata = {
	method = "GET",
	path = "/applications/%s/role-connections/metadata",
}

endpoints.update_application_role_connections_metadata = {
	method = "PUT",
	path = "/applications/%s/role-connections/metadata",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_channel = {
	method = "DELETE",
	path = "/channels/%s",
}

endpoints.get_channel = {
	method = "GET",
	path = "/channels/%s",
}

endpoints.update_channel = {
	method = "PATCH",
	path = "/channels/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.follow_channel = {
	method = "POST",
	path = "/channels/%s/followers",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_channel_invite = {
	method = "POST",
	path = "/channels/%s/invites",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_channel_invites = {
	method = "GET",
	path = "/channels/%s/invites",
}

endpoints.create_message = {
	method = "POST",
	path = "/channels/%s/messages",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.list_messages = {
	method = "GET",
	path = "/channels/%s/messages",
}

endpoints.bulk_delete_messages = {
	method = "POST",
	path = "/channels/%s/messages/bulk-delete",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_pins = {
	method = "GET",
	path = "/channels/%s/messages/pins",
}

endpoints.create_pin = {
	method = "PUT",
	path = "/channels/%s/messages/pins/%s",
}

endpoints.delete_pin = {
	method = "DELETE",
	path = "/channels/%s/messages/pins/%s",
}

endpoints.delete_message = {
	method = "DELETE",
	path = "/channels/%s/messages/%s",
}

endpoints.get_message = {
	method = "GET",
	path = "/channels/%s/messages/%s",
}

endpoints.update_message = {
	method = "PATCH",
	path = "/channels/%s/messages/%s",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.crosspost_message = {
	method = "POST",
	path = "/channels/%s/messages/%s/crosspost",
}

endpoints.delete_all_message_reactions = {
	method = "DELETE",
	path = "/channels/%s/messages/%s/reactions",
}

endpoints.delete_all_message_reactions_by_emoji = {
	method = "DELETE",
	path = "/channels/%s/messages/%s/reactions/%s",
}

endpoints.list_message_reactions_by_emoji = {
	method = "GET",
	path = "/channels/%s/messages/%s/reactions/%s",
}

endpoints.add_my_message_reaction = {
	method = "PUT",
	path = "/channels/%s/messages/%s/reactions/%s/@me",
}

endpoints.delete_my_message_reaction = {
	method = "DELETE",
	path = "/channels/%s/messages/%s/reactions/%s/@me",
}

endpoints.delete_user_message_reaction = {
	method = "DELETE",
	path = "/channels/%s/messages/%s/reactions/%s/%s",
}

endpoints.create_thread_from_message = {
	method = "POST",
	path = "/channels/%s/messages/%s/threads",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_channel_permission_overwrite = {
	method = "DELETE",
	path = "/channels/%s/permissions/%s",
}

endpoints.set_channel_permission_overwrite = {
	method = "PUT",
	path = "/channels/%s/permissions/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.deprecated_list_pins = {
	method = "GET",
	path = "/channels/%s/pins",
}

endpoints.deprecated_create_pin = {
	method = "PUT",
	path = "/channels/%s/pins/%s",
}

endpoints.deprecated_delete_pin = {
	method = "DELETE",
	path = "/channels/%s/pins/%s",
}

endpoints.get_answer_voters = {
	method = "GET",
	path = "/channels/%s/polls/%s/answers/%s",
}

endpoints.poll_expire = {
	method = "POST",
	path = "/channels/%s/polls/%s/expire",
}

endpoints.add_group_dm_user = {
	method = "PUT",
	path = "/channels/%s/recipients/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_group_dm_user = {
	method = "DELETE",
	path = "/channels/%s/recipients/%s",
}

endpoints.send_soundboard_sound = {
	method = "POST",
	path = "/channels/%s/send-soundboard-sound",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_thread_members = {
	method = "GET",
	path = "/channels/%s/thread-members",
}

endpoints.join_thread = {
	method = "PUT",
	path = "/channels/%s/thread-members/@me",
}

endpoints.leave_thread = {
	method = "DELETE",
	path = "/channels/%s/thread-members/@me",
}

endpoints.add_thread_member = {
	method = "PUT",
	path = "/channels/%s/thread-members/%s",
}

endpoints.delete_thread_member = {
	method = "DELETE",
	path = "/channels/%s/thread-members/%s",
}

endpoints.get_thread_member = {
	method = "GET",
	path = "/channels/%s/thread-members/%s",
}

endpoints.create_thread = {
	method = "POST",
	path = "/channels/%s/threads",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.list_private_archived_threads = {
	method = "GET",
	path = "/channels/%s/threads/archived/private",
}

endpoints.list_public_archived_threads = {
	method = "GET",
	path = "/channels/%s/threads/archived/public",
}

endpoints.thread_search = {
	method = "GET",
	path = "/channels/%s/threads/search",
}

endpoints.trigger_typing_indicator = {
	method = "POST",
	path = "/channels/%s/typing",
}

endpoints.list_my_private_archived_threads = {
	method = "GET",
	path = "/channels/%s/users/@me/threads/archived/private",
}

endpoints.create_webhook = {
	method = "POST",
	path = "/channels/%s/webhooks",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_channel_webhooks = {
	method = "GET",
	path = "/channels/%s/webhooks",
}

endpoints.get_gateway = {
	method = "GET",
	path = "/gateway",
}

endpoints.get_bot_gateway = {
	method = "GET",
	path = "/gateway/bot",
}

endpoints.get_guild_template = {
	method = "GET",
	path = "/guilds/templates/%s",
}

endpoints.delete_guild = {
	method = "DELETE",
	path = "/guilds/%s",
}

endpoints.get_guild = {
	method = "GET",
	path = "/guilds/%s",
}

endpoints.update_guild = {
	method = "PATCH",
	path = "/guilds/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_audit_log_entries = {
	method = "GET",
	path = "/guilds/%s/audit-logs",
}

endpoints.create_auto_moderation_rule = {
	method = "POST",
	path = "/guilds/%s/auto-moderation/rules",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_auto_moderation_rules = {
	method = "GET",
	path = "/guilds/%s/auto-moderation/rules",
}

endpoints.delete_auto_moderation_rule = {
	method = "DELETE",
	path = "/guilds/%s/auto-moderation/rules/%s",
}

endpoints.get_auto_moderation_rule = {
	method = "GET",
	path = "/guilds/%s/auto-moderation/rules/%s",
}

endpoints.update_auto_moderation_rule = {
	method = "PATCH",
	path = "/guilds/%s/auto-moderation/rules/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_bans = {
	method = "GET",
	path = "/guilds/%s/bans",
}

endpoints.ban_user_from_guild = {
	method = "PUT",
	path = "/guilds/%s/bans/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_ban = {
	method = "GET",
	path = "/guilds/%s/bans/%s",
}

endpoints.unban_user_from_guild = {
	method = "DELETE",
	path = "/guilds/%s/bans/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.bulk_ban_users_from_guild = {
	method = "POST",
	path = "/guilds/%s/bulk-ban",
	content = {
		["application/json"] = true,
	},
}

endpoints.bulk_update_guild_channels = {
	method = "PATCH",
	path = "/guilds/%s/channels",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_channel = {
	method = "POST",
	path = "/guilds/%s/channels",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_channels = {
	method = "GET",
	path = "/guilds/%s/channels",
}

endpoints.create_guild_emoji = {
	method = "POST",
	path = "/guilds/%s/emojis",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_emojis = {
	method = "GET",
	path = "/guilds/%s/emojis",
}

endpoints.delete_guild_emoji = {
	method = "DELETE",
	path = "/guilds/%s/emojis/%s",
}

endpoints.get_guild_emoji = {
	method = "GET",
	path = "/guilds/%s/emojis/%s",
}

endpoints.update_guild_emoji = {
	method = "PATCH",
	path = "/guilds/%s/emojis/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_integrations = {
	method = "GET",
	path = "/guilds/%s/integrations",
}

endpoints.delete_guild_integration = {
	method = "DELETE",
	path = "/guilds/%s/integrations/%s",
}

endpoints.list_guild_invites = {
	method = "GET",
	path = "/guilds/%s/invites",
}

endpoints.list_guild_members = {
	method = "GET",
	path = "/guilds/%s/members",
}

endpoints.update_my_guild_member = {
	method = "PATCH",
	path = "/guilds/%s/members/@me",
	content = {
		["application/json"] = true,
	},
}

endpoints.search_guild_members = {
	method = "GET",
	path = "/guilds/%s/members/search",
}

endpoints.add_guild_member = {
	method = "PUT",
	path = "/guilds/%s/members/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_guild_member = {
	method = "DELETE",
	path = "/guilds/%s/members/%s",
}

endpoints.get_guild_member = {
	method = "GET",
	path = "/guilds/%s/members/%s",
}

endpoints.update_guild_member = {
	method = "PATCH",
	path = "/guilds/%s/members/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.add_guild_member_role = {
	method = "PUT",
	path = "/guilds/%s/members/%s/roles/%s",
}

endpoints.delete_guild_member_role = {
	method = "DELETE",
	path = "/guilds/%s/members/%s/roles/%s",
}

endpoints.set_guild_mfa_level = {
	method = "POST",
	path = "/guilds/%s/mfa",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_new_member_welcome = {
	method = "GET",
	path = "/guilds/%s/new-member-welcome",
}

endpoints.get_guilds_onboarding = {
	method = "GET",
	path = "/guilds/%s/onboarding",
}

endpoints.put_guilds_onboarding = {
	method = "PUT",
	path = "/guilds/%s/onboarding",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_preview = {
	method = "GET",
	path = "/guilds/%s/preview",
}

endpoints.preview_prune_guild = {
	method = "GET",
	path = "/guilds/%s/prune",
}

endpoints.prune_guild = {
	method = "POST",
	path = "/guilds/%s/prune",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_voice_regions = {
	method = "GET",
	path = "/guilds/%s/regions",
}

endpoints.bulk_update_guild_roles = {
	method = "PATCH",
	path = "/guilds/%s/roles",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_role = {
	method = "POST",
	path = "/guilds/%s/roles",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_roles = {
	method = "GET",
	path = "/guilds/%s/roles",
}

endpoints.delete_guild_role = {
	method = "DELETE",
	path = "/guilds/%s/roles/%s",
}

endpoints.get_guild_role = {
	method = "GET",
	path = "/guilds/%s/roles/%s",
}

endpoints.update_guild_role = {
	method = "PATCH",
	path = "/guilds/%s/roles/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_scheduled_event = {
	method = "POST",
	path = "/guilds/%s/scheduled-events",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_scheduled_events = {
	method = "GET",
	path = "/guilds/%s/scheduled-events",
}

endpoints.delete_guild_scheduled_event = {
	method = "DELETE",
	path = "/guilds/%s/scheduled-events/%s",
}

endpoints.get_guild_scheduled_event = {
	method = "GET",
	path = "/guilds/%s/scheduled-events/%s",
}

endpoints.update_guild_scheduled_event = {
	method = "PATCH",
	path = "/guilds/%s/scheduled-events/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_scheduled_event_users = {
	method = "GET",
	path = "/guilds/%s/scheduled-events/%s/users",
}

endpoints.create_guild_soundboard_sound = {
	method = "POST",
	path = "/guilds/%s/soundboard-sounds",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_soundboard_sounds = {
	method = "GET",
	path = "/guilds/%s/soundboard-sounds",
}

endpoints.delete_guild_soundboard_sound = {
	method = "DELETE",
	path = "/guilds/%s/soundboard-sounds/%s",
}

endpoints.get_guild_soundboard_sound = {
	method = "GET",
	path = "/guilds/%s/soundboard-sounds/%s",
}

endpoints.update_guild_soundboard_sound = {
	method = "PATCH",
	path = "/guilds/%s/soundboard-sounds/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_sticker = {
	method = "POST",
	path = "/guilds/%s/stickers",
	content = {
		["multipart/form-data"] = true,
	},
}

endpoints.list_guild_stickers = {
	method = "GET",
	path = "/guilds/%s/stickers",
}

endpoints.delete_guild_sticker = {
	method = "DELETE",
	path = "/guilds/%s/stickers/%s",
}

endpoints.get_guild_sticker = {
	method = "GET",
	path = "/guilds/%s/stickers/%s",
}

endpoints.update_guild_sticker = {
	method = "PATCH",
	path = "/guilds/%s/stickers/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_guild_template = {
	method = "POST",
	path = "/guilds/%s/templates",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_guild_templates = {
	method = "GET",
	path = "/guilds/%s/templates",
}

endpoints.delete_guild_template = {
	method = "DELETE",
	path = "/guilds/%s/templates/%s",
}

endpoints.sync_guild_template = {
	method = "PUT",
	path = "/guilds/%s/templates/%s",
}

endpoints.update_guild_template = {
	method = "PATCH",
	path = "/guilds/%s/templates/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_active_guild_threads = {
	method = "GET",
	path = "/guilds/%s/threads/active",
}

endpoints.get_guild_vanity_url = {
	method = "GET",
	path = "/guilds/%s/vanity-url",
}

endpoints.get_self_voice_state = {
	method = "GET",
	path = "/guilds/%s/voice-states/@me",
}

endpoints.update_self_voice_state = {
	method = "PATCH",
	path = "/guilds/%s/voice-states/@me",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_voice_state = {
	method = "GET",
	path = "/guilds/%s/voice-states/%s",
}

endpoints.update_voice_state = {
	method = "PATCH",
	path = "/guilds/%s/voice-states/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_webhooks = {
	method = "GET",
	path = "/guilds/%s/webhooks",
}

endpoints.get_guild_welcome_screen = {
	method = "GET",
	path = "/guilds/%s/welcome-screen",
}

endpoints.update_guild_welcome_screen = {
	method = "PATCH",
	path = "/guilds/%s/welcome-screen",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_widget_settings = {
	method = "GET",
	path = "/guilds/%s/widget",
}

endpoints.update_guild_widget_settings = {
	method = "PATCH",
	path = "/guilds/%s/widget",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_guild_widget = {
	method = "GET",
	path = "/guilds/%s/widget.json",
}

endpoints.get_guild_widget_png = {
	method = "GET",
	path = "/guilds/%s/widget.png",
}

endpoints.create_interaction_response = {
	method = "POST",
	path = "/interactions/%s/%s/callback",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.invite_resolve = {
	method = "GET",
	path = "/invites/%s",
}

endpoints.invite_revoke = {
	method = "DELETE",
	path = "/invites/%s",
}

endpoints.create_lobby = {
	method = "POST",
	path = "/lobbies",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_or_join_lobby = {
	method = "PUT",
	path = "/lobbies",
	content = {
		["application/json"] = true,
	},
}

endpoints.edit_lobby = {
	method = "PATCH",
	path = "/lobbies/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_lobby = {
	method = "GET",
	path = "/lobbies/%s",
}

endpoints.edit_lobby_channel_link = {
	method = "PATCH",
	path = "/lobbies/%s/channel-linking",
	content = {
		["application/json"] = true,
	},
}

endpoints.leave_lobby = {
	method = "DELETE",
	path = "/lobbies/%s/members/@me",
}

endpoints.create_linked_lobby_guild_invite_for_self = {
	method = "POST",
	path = "/lobbies/%s/members/@me/invites",
}

endpoints.bulk_update_lobby_members = {
	method = "POST",
	path = "/lobbies/%s/members/bulk",
	content = {
		["application/json"] = true,
	},
}

endpoints.add_lobby_member = {
	method = "PUT",
	path = "/lobbies/%s/members/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_lobby_member = {
	method = "DELETE",
	path = "/lobbies/%s/members/%s",
}

endpoints.create_linked_lobby_guild_invite_for_user = {
	method = "POST",
	path = "/lobbies/%s/members/%s/invites",
}

endpoints.create_lobby_message = {
	method = "POST",
	path = "/lobbies/%s/messages",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.get_lobby_messages = {
	method = "GET",
	path = "/lobbies/%s/messages",
}

endpoints.get_my_oauth2_authorization = {
	method = "GET",
	path = "/oauth2/@me",
}

endpoints.get_my_oauth2_application = {
	method = "GET",
	path = "/oauth2/applications/@me",
}

endpoints.get_public_keys = {
	method = "GET",
	path = "/oauth2/keys",
}

endpoints.get_openid_connect_userinfo = {
	method = "GET",
	path = "/oauth2/userinfo",
}

endpoints.partner_sdk_unmerge_provisional_account = {
	method = "POST",
	path = "/partner-sdk/provisional-accounts/unmerge",
	content = {
		["application/json"] = true,
	},
}

endpoints.partner_sdk_token = {
	method = "POST",
	path = "/partner-sdk/token",
	content = {
		["application/json"] = true,
	},
}

endpoints.bot_partner_sdk_token = {
	method = "POST",
	path = "/partner-sdk/token/bot",
	content = {
		["application/json"] = true,
	},
}

endpoints.get_soundboard_default_sounds = {
	method = "GET",
	path = "/soundboard-default-sounds",
}

endpoints.create_stage_instance = {
	method = "POST",
	path = "/stage-instances",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_stage_instance = {
	method = "DELETE",
	path = "/stage-instances/%s",
}

endpoints.get_stage_instance = {
	method = "GET",
	path = "/stage-instances/%s",
}

endpoints.update_stage_instance = {
	method = "PATCH",
	path = "/stage-instances/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_sticker_packs = {
	method = "GET",
	path = "/sticker-packs",
}

endpoints.get_sticker_pack = {
	method = "GET",
	path = "/sticker-packs/%s",
}

endpoints.get_sticker = {
	method = "GET",
	path = "/stickers/%s",
}

endpoints.get_my_user = {
	method = "GET",
	path = "/users/@me",
}

endpoints.update_my_user = {
	method = "PATCH",
	path = "/users/@me",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_application_user_role_connection = {
	method = "DELETE",
	path = "/users/@me/applications/%s/role-connection",
}

endpoints.get_application_user_role_connection = {
	method = "GET",
	path = "/users/@me/applications/%s/role-connection",
}

endpoints.update_application_user_role_connection = {
	method = "PUT",
	path = "/users/@me/applications/%s/role-connection",
	content = {
		["application/json"] = true,
	},
}

endpoints.create_dm = {
	method = "POST",
	path = "/users/@me/channels",
	content = {
		["application/json"] = true,
	},
}

endpoints.list_my_connections = {
	method = "GET",
	path = "/users/@me/connections",
}

endpoints.list_my_guilds = {
	method = "GET",
	path = "/users/@me/guilds",
}

endpoints.leave_guild = {
	method = "DELETE",
	path = "/users/@me/guilds/%s",
}

endpoints.get_my_guild_member = {
	method = "GET",
	path = "/users/@me/guilds/%s/member",
}

endpoints.get_user = {
	method = "GET",
	path = "/users/%s",
}

endpoints.list_voice_regions = {
	method = "GET",
	path = "/voice/regions",
}

endpoints.delete_webhook = {
	method = "DELETE",
	path = "/webhooks/%s",
}

endpoints.get_webhook = {
	method = "GET",
	path = "/webhooks/%s",
}

endpoints.update_webhook = {
	method = "PATCH",
	path = "/webhooks/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_webhook_by_token = {
	method = "DELETE",
	path = "/webhooks/%s/%s",
}

endpoints.execute_webhook = {
	method = "POST",
	path = "/webhooks/%s/%s",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.get_webhook_by_token = {
	method = "GET",
	path = "/webhooks/%s/%s",
}

endpoints.update_webhook_by_token = {
	method = "PATCH",
	path = "/webhooks/%s/%s",
	content = {
		["application/json"] = true,
	},
}

endpoints.execute_github_compatible_webhook = {
	method = "POST",
	path = "/webhooks/%s/%s/github",
	content = {
		["application/json"] = true,
	},
}

endpoints.delete_original_webhook_message = {
	method = "DELETE",
	path = "/webhooks/%s/%s/messages/@original",
}

endpoints.get_original_webhook_message = {
	method = "GET",
	path = "/webhooks/%s/%s/messages/@original",
}

endpoints.update_original_webhook_message = {
	method = "PATCH",
	path = "/webhooks/%s/%s/messages/@original",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.delete_webhook_message = {
	method = "DELETE",
	path = "/webhooks/%s/%s/messages/%s",
}

endpoints.get_webhook_message = {
	method = "GET",
	path = "/webhooks/%s/%s/messages/%s",
}

endpoints.update_webhook_message = {
	method = "PATCH",
	path = "/webhooks/%s/%s/messages/%s",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

endpoints.execute_slack_compatible_webhook = {
	method = "POST",
	path = "/webhooks/%s/%s/slack",
	content = {
		["multipart/form-data"] = true,
		["application/json"] = true,
		["application/x-www-form-urlencoded"] = true,
	},
}

return endpoints