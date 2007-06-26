﻿assert(BigWigs, "BigWigs not found!")

------------------------------
--      Are you local?      --
------------------------------

local L = AceLibrary("AceLocale-2.2"):new("BigWigsColors")
local PaintChips = AceLibrary("PaintChips-2.0")

local shortBar
local longBar

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	["Colors"] = true,

	["Messages"] = true,
	["Bars"] = true,
	["Short"] = true,
	["Long"] = true,
	["Short bars"] = true,
	["Long bars"] = true,
	["Color %d"] = true,
	["Number of colors"] = true,
	["Background"] = true,
	["Text"] = true,
	["Reset"] = true,

	["Colors of messages and bars."] = true,
	["Change the color for %q messages."] = true,
	["Colors for short bars (< 1 minute)."] = true,
	["Colors for long bars (> 1 minute)."] = true,
	["Change the %s color."] = true,
	["Number of colors the bar has."] = true,
	["Change the bar background color."] = true,
	["Change the bar text color."] = true,
	["Resets all colors to defaults."] = true,

	["Important"] = true,
	["Personal"] = true,
	["Urgent"] = true,
	["Attention"] = true,
	["Positive"] = true,
	["Bosskill"] = true,
	["Core"] = true,

	["1st"] = true,
	["2nd"] = true,
	["3rd"] = true,
	["4th"] = true,
} end)

L:RegisterTranslations("koKR", function() return {
	["Colors"] = "색상",

	["Messages"] = "메세지",
	["Bars"] = "바",
	["Short bars"] = "짧은바",
	["Long bars"] = "긴바",
	["Color %d"] = "색상 %d",
	["Number of colors"] = "색상의 수",
	["Background"] = "배경",
	["Text"] = "글자",
	["Reset"] = "초기화",

	["Colors of messages and bars."] = "메세지와 바의 색상을 설정합니다.",
	["Change the color for %q messages."] = "%q 메세지에 대한 색생을 변경합니다.",
	["Colors for short bars (< 1 minute)."] = "짧은 바에 대한 색상을 변경합니다(1분 이하).",
	["Colors for long bars (> 1 minute)."] = "긴 바에 대한 색상을 설정합니다 (1분 이상).",
	["Change the %s color."] = "%s의 색상을 변경합니다.",
	["Number of colors the bar has."] = "바 색상의 개수를 설정합니다.",
	["Change the bar background color."] = "배경 색상을 변경합니다.",
	["Change the bar text color."] = "글자 색상을 변경합니다.",
	["Resets all colors to defaults."] = "모든 색상을 기본 설정으로 초기화합니다.",

	["Important"] = "중요",
	["Personal"] = "개인",
	["Urgent"] = "긴급",
	["Attention"] = "주의",
	["Positive"] = "제안",
	["Bosskill"] = "보스사망",
	["Core"] = "코어",

	["1st"] = "첫째",
	["2nd"] = "둘째",
	["3rd"] = "셋째",
	["4th"] = "넷째",
} end)

--Chinese Translate by 月色狼影@CWDG
--CWDG site: http://Cwowaddon.com
L:RegisterTranslations("zhCN", function() return {
	["Colors"] = "颜色",

	["Messages"] = "信息提示",
	["Bars"] = "计时条",
	["Short"] = "短",
	["Long"] = "长",
	["Short bars"] = "短时间计时条",
	["Long bars"] = "长时间计时条",
	["Color %d"] = "颜色 %d",
	["Number of colors"] = "显示颜色数量",
	["Background"] = "背景",
	["Text"] = "文本",
	["Reset"] = "重置",

	["Colors of messages and bars."] = "设置信息文字与计时条的颜色。",
	["Change the color for %q messages."] = "改变%q信息的颜色。",
	["Colors for short bars (< 1 minute)."] = "短时间计时条 (<1 分钟)的颜色。",
	["Colors for long bars (> 1 minute)."] = "长时间计时条 (> 1分钟)的颜色。",
	["Change the %s color."] = "改变 %s 颜色。",
	["Number of colors the bar has."] = "计时条的颜色数量。",
	["Change the bar background color."] = "改变计时条背景颜色。",
	["Change the bar text color."] = "改变计时条文本显示颜色",
	["Resets all colors to defaults."] = "重置所有颜色为默认",

	["Important"] = "重要",
	["Personal"] = "个人",
	["Urgent"] = "紧急",
	["Attention"] = "注意",
	["Positive"] = "醒目",
	["Bosskill"] = "首领击杀",
	["Core"] = "核心",

	["1st"] = "第一",
	["2nd"] = "第二",
	["3rd"] = "第三",
	["4th"] = "第四",
} end)

L:RegisterTranslations("zhTW", function() return {
	["Colors"] = "顏色",

	["Messages"] = "訊息",
	["Bars"] = "計時條",
	["Short bars"] = "短計時條",
	["Long bars"] = "長計時條",
	["Color %d"] = "顏色 %d",
	["Number of colors"] = "顏色數量",
	["Background"] = "背景",
	["Text"] = "文字",
	["Reset"] = "重置",

	["Colors of messages and bars."] = "訊息文字與計時條顏色。",
	["Change the color for %q messages."] = "變更%q訊息的顏色。",
	["Colors for short bars (< 1 minute)."] = "短時計時條（小於一分鐘）的顏色。",
	["Colors for long bars (> 1 minute)."] = "長時計時條（大於一分鐘）的顏色。",
	["Change the %s color."] = "變更顏色%s。",
	["Number of colors the bar has."] = "計時條顏色數量。",
	["Change the bar background color."] = "變更背景顏色。",
	["Change the bar text color."] = "變更文字顏色。",
	["Resets all colors to defaults."] = "全部重置為預設狀態。",

	["Important"] = "重要",
	["Personal"] = "個人",
	["Urgent"] = "緊急",
	["Attention"] = "注意",
	["Positive"] = "積極",
	["Bosskill"] = "首領擊殺",
	["Core"] = "核心",

	["1st"] = "第一",
	["2nd"] = "第二",
	["3rd"] = "第三",
	["4th"] = "第四",
} end)

L:RegisterTranslations("deDE", function() return {
	["Colors"] = "Farben",

	["Messages"] = "Nachrichten",
	["Bars"] = "Anzeigebalken",
	["Short"] = "Kurz",
	["Long"] = "Lang",
	["Short bars"] = "Kurze Anzeigebalken",
	["Long bars"] = "Lange Anzeigebalken",
	["Color %d"] =  "Farbe %d",
	["Number of colors"] = "Anzahl der Farben",
	["Background"] = "Hintergrund",
	["Text"] = "Text",
	["Reset"] = "Zur\195\188cksetzen",

	["Colors of messages and bars."] = "Farben der Nachrichten und Anzeigebalken.",
	["Change the color for %q messages."] = "Farbe \195\164ndern f\195\188r %q Nachrichten.",
	["Colors for short bars (< 1 minute)."] = "Farben f\195\188r kurze Anzeigebalken (< 1 Minute).",
	["Colors for long bars (> 1 minute)."] = "Farben f\195\188r lange Anzeigebalken (> 1 Minute).",
	["Change the %s color."] = "Die %s Farbe \195\164ndern.",
	["Number of colors the bar has."] = "Anzahl der Farben eines Anzeigebalkens.",
	["Change the bar background color."] = "Hintergrund Farbe \195\164ndern.",
	["Change the bar text color."] = "Textfarbe \195\164ndern.",
	["Resets all colors to defaults."] = "Auf Standard zur\195\188cksetzen.",

	["Important"] = "Wichtig",
	["Personal"] = "Pers\195\182hnlich",
	["Urgent"] = "Dringend",
	["Attention"] = "Achtung",
	["Positive"] = "Positiv",
	["Bosskill"] = "Bosskill",
	["Core"] = "Core",

	["1st"] = "1te",
	["2nd"] = "2te",
	["3rd"] = "3te",
	["4th"] = "4te",
} end)

L:RegisterTranslations("frFR", function() return {
	["Colors"] = "Couleurs",

	["Messages"] = "Messages",
	["Bars"] = "Barres",
	["Short"] = "Court",
	["Long"] = "Long",
	["Short bars"] = "BarresCourtes",
	["Long bars"] = "BarresLongues",
	["Color %d"] = "Couleur %d",
	["Number of colors"] = "Nombre de couleurs",
	["Background"] = "Fond",
	["Text"] = "Texte",
	["Reset"] = "RÀZ",

	["Colors of messages and bars."] = "Couleurs des messages et des barres.",
	["Change the color for %q messages."] = "Change la couleur des messages %q.",
	["Colors for short bars (< 1 minute)."] = "Couleurs des barres de courte durée (< 1 minute).",
	["Colors for long bars (> 1 minute)."] = "Couleurs des barres de longue durée (> 1 minute).",
	["Change the %s color."] = "Change la couleur de %s.",
	["Number of colors the bar has."] = "Nombre de couleurs que possède la barre.",
	["Change the bar background color."] = "Change la couleur du fond.",
	["Change the bar text color."] = "Change la couleur du texte.",
	["Resets all colors to defaults."] = "Réinitialise tous les paramètres à leurs valeurs par défaut.",

	["Important"] = "Important",
	["Personal"] = "Personnel",
	["Urgent"] = "Urgent",
	["Attention"] = "Attention",
	["Positive"] = "Positif",
	["Bosskill"] = "Défaite",
	["Core"] = "Noyau",

	["1st"] = "1er",
	["2nd"] = "2ème",
	["3rd"] = "3ème",
	["4th"] = "4ème",
} end)

----------------------------------
--      Module Declaration      --
----------------------------------

local plugin = BigWigs:NewModule("Colors")

plugin.revision = tonumber(("$Revision$"):sub(12, -3))
plugin.defaultDB = {
	Important = "ff0000", -- Red
	Personal = "ff0000", -- Red
	Urgent = "ff7f00", -- Orange
	Attention = "ffff00", -- Yellow
	Positive = "00ff00", -- Green
	Bosskill = "00ff00", -- Green
	Core = "00ffff", -- Cyan

	short1 = "ffff00",
	short2 = "ff7f00",
	short3 = "ff0000",
	short4 = "ff0000",
	short = 3,

	long1 = "00ff00",
	long2 = "ffff00",
	long3 = "ff7f00",
	long4 = "ff0000",
	long = 4,
}

local function get(key)
	return select(2, PaintChips:GetRGBPercent(plugin.db.profile[key]))
end

local function set(key, r, g, b)
	local hex = plugin:RGBToHex(r, g, b)
	PaintChips:RegisterHex(hex)
	plugin.db.profile[key] = hex
end

plugin.consoleCmd = L["Colors"]
plugin.consoleOptions = {
	type = "group",
	name = L["Colors"],
	desc = L["Colors of messages and bars."],
	args = {
		["messages"] = {
			type = "header",
			name = L["Messages"],
			order = 1,
		},
		["Important"] = {
			name = L["Important"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Important"]),
			passValue = "Important",
			get = get,
			set = set,
			order = 2,
		},
		["Personal"] = {
			name = L["Personal"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Personal"]),
			passValue = "Personal",
			get = get,
			set = set,
			order = 3,
		},
		["Urgent"] = {
			name = L["Urgent"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Urgent"]),
			passValue = "Urgent",
			get = get,
			set = set,
			order = 4,
		},
		["Attention"] = {
			name = L["Attention"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Attention"]),
			passValue = "Attention",
			get = get,
			set = set,
			order = 5,
		},
		["Positive"] = {
			name = L["Positive"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Positive"]),
			passValue = "Positive",
			get = get,
			set = set,
			order = 6,
		},
		["Bosskill"] = {
			name = L["Bosskill"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Bosskill"]),
			passValue = "Bosskill",
			get = get,
			set = set,
			order = 7,
		},
		["Core"] = {
			name = L["Core"],
			type = "color",
			desc = L["Change the color for %q messages."]:format(L["Core"]),
			passValue = "Core",
			get = get,
			set = set,
			order = 8,
		},
		["spacer1"] = { type = "header", name = " ", order = 9, },
		["bars"] = {
			type = "header",
			name = L["Bars"],
			order = 10,
		},
		["short"] = {
			type = "group",
			name = L["Short bars"],
			desc = L["Colors for short bars (< 1 minute)."],
			order = 11,
			pass = true,
			get = function(key)
				if key == "amount" then
					return plugin.db.profile.short
				else
					return select(2, PaintChips:GetRGBPercent(plugin.db.profile[key]))
				end
			end,
			set = function(key, r, g, b)
				if key == "amount" then
					plugin.db.profile.short = r
				else
					local hex = plugin:RGBToHex(r, g, b)
					PaintChips:RegisterHex(hex)
					plugin.db.profile[key] = hex
				end
			end,
			args = {
				["short1"] = {
					name = L["Color %d"]:format(1),
					type = "color",
					desc = L["Change the %s color."]:format(L["1st"]),
					order = 1,
				},
				["short2"] = {
					name = L["Color %d"]:format(2),
					type = "color",
					desc = L["Change the %s color."]:format(L["2nd"]),
					disabled = function() return plugin.db.profile.short < 2 end,
					order = 2,
				},
				["short3"] = {
					name = L["Color %d"]:format(3),
					type = "color",
					desc = L["Change the %s color."]:format(L["3rd"]),
					disabled = function() return plugin.db.profile.short < 3 end,
					order = 3,
				},
				["short4"] = {
					name = L["Color %d"]:format(4),
					type = "color",
					desc = L["Change the %s color."]:format(L["4th"]),
					disabled = function() return plugin.db.profile.short < 4 end,
					order = 4,
				},
				["amount"] = {
					name = L["Number of colors"],
					type = "range",
					desc = L["Number of colors the bar has."],
					min = 1,
					max = 4,
					step = 1,
					order = 5,
				},
			},
		},
		[L["Long"]] = {
			type = "group",
			name = L["Long bars"],
			desc = L["Colors for long bars (> 1 minute)."],
			order = 12,
			pass = true,
			get = function(key)
				if key == "amount" then
					return plugin.db.profile.long
				else
					return select(2, PaintChips:GetRGBPercent(plugin.db.profile[key]))
				end
			end,
			set = function(key, r, g, b)
				if key == "amount" then
					plugin.db.profile.long = r
				else
					local hex = plugin:RGBToHex(r, g, b)
					PaintChips:RegisterHex(hex)
					plugin.db[key] = hex
				end
			end,
			args = {
				["long1"] = {
					name = L["Color %d"]:format(1),
					type = "color",
					desc = L["Change the %s color."]:format(L["1st"]),
					order = 1,
				},
				["long2"] = {
					name = L["Color %d"]:format(2),
					type = "color",
					desc = L["Change the %s color."]:format(L["2nd"]),
					disabled = function() return plugin.db.profile.long < 2 end,
					order = 2,
				},
				["long3"] = {
					name = L["Color %d"]:format(3),
					type = "color",
					desc = L["Change the %s color."]:format(L["3rd"]),
					disabled = function() return plugin.db.profile.long < 3 end,
					order = 3,
				},
				["long4"] = {
					name = L["Color %d"]:format(4),
					type = "color",
					desc = L["Change the %s color."]:format(L["4th"]),
					disabled = function() return plugin.db.profile.long < 4 end,
					order = 4,
				},
				["amount"] = {
					name = L["Number of colors"],
					type = "range",
					desc = L["Number of colors the bar has."],
					min = 1,
					max = 4,
					step = 1,
					order = 5,
				},
			},
		},
		[L["Background"]] = {
			name = L["Background"],
			type = "color",
			desc = L["Change the bar background color."],
			hasAlpha = true,
			get = function()
				if plugin.db.profile.bgc then
					local r, g, b = select(2, PaintChips:GetRGBPercent(plugin.db.profile.bgc))
					return r, g, b, plugin.db.profile.bga
				else
					return 0, .5, .5, .5
				end
			end,
			set = function(r, g, b, a)
				local hex = plugin:RGBToHex(r, g, b)
				PaintChips:RegisterHex(hex)
				plugin.db.profile.bgc = hex
				plugin.db.profile.bga = a
			end,
			order = 13,
		},
		[L["Text"]] = {
			name = L["Text"],
			type = "color",
			desc = L["Change the bar text color."],
			get = function()
				if plugin.db.profile.txtc then
					return get("txtc")
				else
					return 1, 1, 1
				end
			end,
			set = function(r, g, b) set("txtc", r, g, b) end,
			order = 14,
		},
		["spacer2"] = { type = "header", name = " ", order = 15, },
		[L["Reset"]] = {
			type = "execute",
			name = L["Reset"],
			desc = L["Resets all colors to defaults."],
			handler = plugin,
			func = "ResetDB",
			order = 16,
		},
	},
}

------------------------------
--      Initialization      --
------------------------------

local function RegHex(hex)
	if type(hex) == "string" then
		PaintChips:RegisterHex(hex)
	elseif type(hex) == "table" then
		for _,hexx in pairs(hex) do
			RegHex(hexx)
		end
	end
end

function plugin:OnEnable()
	RegHex(self.db.profile)

	if type(shortBar) ~= "table" then
		self:UpdateColorTables()
	end
end

function plugin:UpdateColorTables()
	if type(shortBar) == "table" then
		for k in ipairs(shortBar) do shortBar[k] = nil end
	else
		shortBar = {}
	end
	if type(longBar) == "table" then
		for k in ipairs(longBar) do longBar[k] = nil end
	else
		longBar = {}
	end
	local db = self.db.profile
	for i = 1, db.short do
		shortBar[i] = db["short"..i]
	end
	for i = 1, db.long do
		longBar[i] = db["long"..i]
	end
end

------------------------------
--         Handlers         --
------------------------------

local function copyTable(to, from)
	setmetatable(to, nil)
	for k,v in pairs(from) do
		if type(k) == "table" then
			k = copyTable({}, k)
		end
		if type(v) == "table" then
			v = copyTable({}, v)
		end
		to[k] = v
	end
	setmetatable(to, from)
	return to
end

function plugin:ResetDB()
	copyTable(self.db.profile, self.defaultDB)
end

function plugin:RGBToHex(r, g, b)
	return ("%02x%02x%02x"):format(r*255, g*255, b*255)
end

function plugin:MsgColor(hint)
	local color = self.db.profile[hint]
	if type(color) ~= "string" then return hint end
	return color
end

function plugin:BarColor(time)
	if time <= 60 then
		return unpack(shortBar)
	else
		return unpack(longBar)
	end
end


