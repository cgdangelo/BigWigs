local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs", "enUS", true)

-- Core.lua
L["%s enabled"] = true	-- "<boss> enabled"
L["%s has been defeated"] = true     -- "<boss> has been defeated"
L["%s have been defeated"] = true    -- "<bosses> have been defeated"
L["Bosses"] = true
L["Options for bosses in %s."] = true -- "Options for bosses in <zone>"
L["Options for %s (r%d)."] = true     -- "Options for <boss> (<revision>)"
L["Plugins"] = true
L["Plugins handle the core features of Big Wigs - like displaying messages, timer bars, and other essential features."] = true
L["Extras"] = true
L["Extras are 3rd party and bundled plugins that Big Wigs will function properly without."] = true
L["Active"] = true
L["Activate or deactivate this module."] = true
L["Reboot"] = true
L["Reboot this module."] = true
L["Options"] = true
L["Minimap icon"] = true
L["Toggle show/hide of the minimap icon."] = true
L["Advanced"] = true
L["You shouldn't really need to touch these options, but if you want to tweak them then you're welcome to do so!"] = true

L["Toggles whether or not the boss module should warn about %s."] = true
L.bosskill = "Boss death"
L.bosskill_desc = "Announce when the boss has been defeated."
L.berserk = "Berserk"
L.berserk_desc = "Show a timer bar for and timed warnings for when the boss will go berserk."

L["Load"] = true
L["Load All"] = true
L["Load all %s modules."] = true

L.already_registered = "|cffff0000WARNING:|r |cff00ff00%s|r (|cffffff00%s|r) already exists as a module in Big Wigs, but something is trying to register it again. This usually means you have two copies of this module in your addons folder due to some addon updater failure. It is recommended that you delete any Big Wigs folders you have and then reinstall it from scratch."

-- Loader / Options.lua
L["You are running an official release of Big Wigs 3.0 (revision %d)"] = true
L["You are running an ALPHA RELEASE of Big Wigs 3.0 (revision %d)"] = true
L["You are running a source checkout of Big Wigs 3.0 directly from the repository."] = true
L["There is a new release of Big Wigs available. You can visit curse.com, wowinterface.com, wowace.com or use the Curse Updater to get the new release."] = true

L["|cff00ff00Module running|r"] = true
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them."] = true
L["Active boss modules:"] = true
L["All running modules have been reset."] = true
L["Menu"] = true
L["Menu options."] = true

L["Big Wigs is currently disabled."] = true
L["|cffeda55fClick|r to enable."] = true
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them. |cffeda55fCtrl-Alt-Click|r to disable Big Wigs completely."] = true
L["All running modules have been disabled."] = true

L["|cffff0000There are people in your group with\nolder versions or without Big Wigs.\nYou can get more details with /bwv.|r"] = true
L["|cff00ff00Everyone is running an up-to-date Big Wigs.|r"] = true

-- Options.lua
L["Customize ..."] = true
L["Welcome to Big Wigs, where the boss encounters roam. Please fasten your seatbelt, eat peanuts and enjoy the ride. It will not eat your children, but it will assist you in preparing that new boss encounter as a 7-course dinner for your raid group.\n"] = true
L["Configure ..."] = true
L["Closes the interface options window and lets you configure displays for things like bars and messages.\n\nIf you want to customize more behind-the-scenes things, you can expand Big Wigs in the left tree and find the 'Customize ...' subsection."] = true
L["Sound"] = true
L["Messages might come with a sound. Some people find it easier to listen for these after they've learned which sound goes with which message, as opposed to reading the actual messages.\n\n|cffff4411Even when off, the default raid warning sound might be played by incoming raid warnings from other players. That sound, however, is different from the sounds we use.|r"] = true
L["Blizzard warnings"] = true
L["Blizzard provides their own messages for some abilities on some encounters. In our opinion, these messages are both way too long and descriptive. We try to produce smaller, more fitting messages that do not interfere with the gameplay, and that don't tell you specifically what to do.\n\n|cffff4411When off, Blizzards warnings will not be shown in the middle of the screen, but they will still show in your chat frame.|r"] = true
L["Raid icons"] = true
L["Some encounter scripts use raid icons to mark players that are of special interest to your group. For example 'bomb'-type effects and mind control. If you turn this off, you won't mark anyone.\n\n|cffff4411Only applies if you're either the group leader or promoted!|r"] = true
L["Whisper warnings"] = true
L["Send a whisper notification to fellow players about certain encounter abilities that affect them. Think 'bomb'-type effects and such.\n\n|cffff4411Only applies if you're either the group leader or promoted!|r"] = true
L["Broadcast"] = true
L["Broadcast all messages from Big Wigs to the raid warning channel.\n\n|cffff4411Only applies if you are raid leader or in a 5-man party!|r"] = true
L["Raid channel"] = true
L["Use the raid channel instead of raid warning for broadcasting messages."] = true
L["Configure"] = true
L["Test"] = true
L["Reset positions"] = true
L["Options for %s."] = true

L["BAR"] = "Bars"
L["MESSAGE"] = "Messages"
L["SOUND"] = "Sounds"
L["ICON"] = "Icon"
L["PROXIMITY"] = "Proximity"
L["WHISPER"] = "Whisper"
L["SAY"] = "Say"
L["FLASHSHAKE"] = "Flash'n'shake"
L["PING"] = "Ping"
L["EMPHASIZE"] = "Emphasize"
L["MESSAGE_desc"] = "Most encounter abilities come with one or more messages that Big Wigs will show on your screen. If you disable this option, none of the messages attached to this option, if any, will be displayed."
L["BAR_desc"] = "Bars are shown for some encounter abilities when appropriate. If this ability is accompanied by a bar that you want to hide, disable this option."
L["FLASHSHAKE_desc"] = "Some abilities might be more important than others. If you want your screen to flash and shake when this ability is imminent or used, check this option."
L["ICON_desc"] = "Big Wigs can mark characters affected by abilities with an icon. This makes them easier to spot."
L["WHISPER_desc"] = "Some effects are important enough that Big Wigs will send a whisper to the affected person."
L["SAY_desc"] = "Chat bubbles are easy to spot. Big Wigs will use a say message to announce people nearby about an effect on you."
L["PING_desc"] = "Sometimes locations can be important, Big Wigs will ping the minimap so people know where you are."
L["EMPHASIZE_desc"] = "Enabling this will SUPER EMPHASIZE any messages or bars associated with this encounter ability. Messages will be bigger, bars will flash and have a different color, sounds will be used to count down when the ability is imminent. Basically you will notice it."
L["Advanced options"] = true
L["<< Back"] = true

L["About"] = true
L["Main Developers"] = true
L["Maintainers"] = true
L["License"] = true
L["Website"] = true
L["Contact"] = true
L["See license.txt in the main Big Wigs folder."] = true
L["irc.freenode.net in the #wowace channel"] = true
L["Thanks to the following for all their help in various fields of development"] = true
