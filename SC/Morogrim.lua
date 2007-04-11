﻿------------------------------
--      Are you local?    --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["Morogrim Tidewalker"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)
local L2 = AceLibrary("AceLocale-2.2"):new("BigWigsCommonWords")

local inGrave = {}
local started = nil
local grobulealert

----------------------------
--      Localization     --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Morogrim",

	tidal = "Tidal Wave",
	tidal_desc = "Warn when Morogrim casts Tidal Wave.",

	grave = "Watery Grave",
	grave_desc = "Alert who has watery grave and durations.",

	murloc = "Incoming Murlocs",
	murloc_desc = "Warn for incoming murlocs.",

	grobules = "Incoming Grobules",
	grobules_desc = "Warn for incoming Watery Grobules.",

	grave_trigger1 = "^([^%s]+) ([^%s]+) afflicted by Watery Grave",
	grave_trigger2 = "sends his enemies",
	grave_message = "Watery Grave: %s",
	grave_bar = "Watery Graves",
	grave_nextbar = "Next Watery Graves",

	murloc_bar = "Murlocs incoming",
	murloc_trigger = "Murlocs",
	murloc_message = "Incoming Murlocs!",
	murlocs_soon_message = "Murlocs soon!",

	grobules_trigger = "watery grobules",
	grobules_message = "Incoming Grobules!",
	grobules_warning = "Grobules Soon!",

	tidal_trigger = "Morogrim Tidewalker begins to cast Tidal Wave.",
	tidal_message = "Tidal Wave!",
} end )

L:RegisterTranslations("deDE", function() return {
	grave = "Nasses Grab",
	--grave_desc = "Zeigt an, wer im Nassen Grab ist", --enUS changed

	murloc = "Murlocs",
	murloc_desc = "Warnt vor ankommenden Murlocs",

	grobules = "Incoming Grobules", -- to translate
	grobules_desc = "Warn for incoming Watery Grobules", -- to translate

	grave_trigger1 = "^([^%s]+) ([^%s]+) von Nasses Grab betroffen",
	grave_trigger2 = "schickt seine Feinde",
	grave_message = "Nasses Grab: %s",
	grave_bar = "Nasses Grab",
	--grave_nextbar = "Next Watery Graves",

	murloc_bar = "n\195\164chste Murlocs",
	murloc_trigger = "Murlocs",
	murloc_message = "Murlocs kommen!",
	murlocs_soon_message = "Murlocs bald!",

	--grobules_trigger = "watery grobules", -- to translate
	--grobules_message = "Incoming Grobules!", -- to translate
	--grobules_warning = "Grobules Soon!",
} end )

----------------------------------
--    Module Declaration   --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = AceLibrary("Babble-Zone-2.2")["Coilfang Reservoir"]
mod.otherMenu = "Serpentshrine Cavern"
mod.enabletrigger = boss
mod.toggleoptions = {"tidal", "grave", "murloc", "grobules", "bosskill"}
mod.revision = tonumber(("$Revision$"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	for k in pairs(inGrave) do inGrave[k] = nil end
	started = nil
	grobulealert = nil
	self:RegisterEvent("UNIT_HEALTH")

	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE", "Event")
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE", "Event")
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE", "Event")

	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")

	self:RegisterEvent("PLAYER_REGEN_DISABLED", "CheckForEngage")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")

	self:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")
	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH", "GenericBossDeath")

	self:RegisterEvent("BigWigs_RecvSync")
	self:TriggerEvent("BigWigs_ThrottleSync", "MoroGrave", 0)
	self:TriggerEvent("BigWigs_ThrottleSync", "MoroTidal", 5)
end

------------------------------
--    Event Handlers     --
------------------------------

function mod:CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE(msg)
	if msg == L["tidal_trigger"] then
		self:Sync("MoroTidal")
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if self.db.profile.grave and msg:find(L["grave_trigger2"]) then
		self:Bar(L["grave_nextbar"], 30, "Spell_Frost_ArcticWinds")
		self:Bar(L["grave_bar"], 6, "Spell_Frost_ArcticWinds")
	elseif self.db.profile.murloc and msg:find(L["murloc_trigger"]) then
		self:CancelScheduledEvent("murloc1")
		self:Message(L["murloc_message"], "Positive")
		self:Bar(L["murloc_bar"], 55, "INV_Misc_Head_Murloc_01")
		self:ScheduleEvent("murloc1", "BigWigs_Message", 51, L["murlocs_soon_message"], "Attention")
	elseif self.db.profile.grobules and msg:find(L["grobules_trigger"]) then
		self:Message(L["grobules_message"], "Important", nil, "Alert")
	end
end

function mod:Event(msg)
	local gplayer, gtype = select(3, msg:find(L["grave_trigger1"]))
	if gplayer and gtype then
		if gplayer == L2["you"] and gtype == L2["are"] then
			gplayer = UnitName("player")
		end
		self:Sync("MoroGrave " .. gplayer)
	end
end

function mod:GraveWarn()
	if self.db.profile.grave then
		local msg = nil
		for k in pairs(inGrave) do
			if not msg then
				msg = k
			else
				msg = msg .. ", " .. k
			end
		end
		self:Message(L["grave_message"]:format(msg), "Important", nil, "Alert")
	end
	for k in pairs(inGrave) do inGrave[k] = nil end
end

function mod:BigWigs_RecvSync(sync, rest, nick)
	if self:ValidateEngageSync(sync, rest) and not started then
		started = true
		if self:IsEventRegistered("PLAYER_REGEN_DISABLED") then
			self:UnregisterEvent("PLAYER_REGEN_DISABLED")
		end
		if self.db.profile.murloc then
			self:Bar(L["murloc_bar"], 40, "INV_Misc_Head_Murloc_01")
			self:Bar(L["grave_nextbar"], 20, "Spell_Frost_ArcticWinds")
		end
	elseif sync == "MoroGrave" and rest then
		inGrave[rest] = true
		self:ScheduleEvent("Grave", self.GraveWarn, 0.5, self)
	elseif sync == "MoroTidal" and self.db.profile.tidal then
		self:Message(L["tidal_message"], "Urgent", nil, "Alarm")
	end
end

function mod:UNIT_HEALTH(msg)
	if not self.db.profile.grobules then return end
	if UnitName(msg) == boss then
		local health = UnitHealth(msg)
		if health > 26 and health <= 30 and not grobulealert then
			self:Message(L["grobules_warning"], "Positive")
			grobulealert = true
		elseif health > 50 and grobulealert then
			grobulealert = false
		end
	end
end
