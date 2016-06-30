-- Customize the beep sounds here, before and after voices.
SCHEMA.beepSounds = {}
SCHEMA.beepSounds[FACTION_TROOPER] = {
	on = {
		"npc/overwatch/radiovoice/on1.wav",
		"npc/overwatch/radiovoice/on3.wav",
		"npc/metropolice/vo/on2.wav"
	},
	off = {
		"npc/metropolice/vo/off1.wav",
		"npc/metropolice/vo/off2.wav",
		"npc/metropolice/vo/off3.wav",
		"npc/metropolice/vo/off4.wav",
		"npc/overwatch/radiovoice/off2.wav",
		"npc/overwatch/radiovoice/off2.wav"
	}
}
SCHEMA.beepSounds[FACTION_SHADOWTROOPER] = {
	on = {
		"npc/combine_soldier/vo/on1.wav",
		"npc/combine_soldier/vo/on2.wav"
	},
	off = {
		"npc/combine_soldier/vo/off1.wav",
		"npc/combine_soldier/vo/off2.wav",
		"npc/combine_soldier/vo/off3.wav"
	}
}

-- Sounds play after the player has died.
SCHEMA.deathSounds = {}
SCHEMA.deathSounds[FACTION_TROOPER] = {
	"fg/vo/conscript/die1.wav",
	"fg/vo/conscript/die3.wav",
	"fg/vo/conscript/die4.wav"
}
SCHEMA.deathSounds[FACTION_SHADOWTROOPER] = {
	"fg/vo/conscript/die1.wav",
	"fg/vo/conscript/die3.wav",
	"fg/vo/conscript/die4.wav"
}

-- Sounds the player makes when injured.
SCHEMA.painSounds = {}
SCHEMA.painSounds[FACTION_TROOPER] = {
	"npc/metropolice/pain1.wav",
	"npc/metropolice/pain2.wav",
	"npc/metropolice/pain3.wav",
	"npc/metropolice/pain4.wav"
}
SCHEMA.painSounds[FACTION_SHADOWTROOPER] = {
	"npc/combine_soldier/pain1.wav",
	"npc/combine_soldier/pain2.wav",
	"npc/combine_soldier/pain3.wav"
}

-- Civil Protection name prefix.
SCHEMA.cpPrefix = "FN-"

-- How long the Combine digits are.
SCHEMA.digitsLen = 4

-- Rank information.
SCHEMA.rctRanks = {"RCT"}
SCHEMA.unitRanks = {"TRP", "PLT", "FLMTRP"}
SCHEMA.eliteRanks = {"SHDTRP", "SHDCMD"}
SCHEMA.scnRanks = {"SCN", "CLAW.SCN"}

-- What model each rank should be.
SCHEMA.rankModels = {
	["RCT"] = "models/npc/star wars the force awakens/first order trooper/spartanmark6/first_order_trooper.mdl",
	["TRP"] = "models/npc/star wars the force awakens/first order trooper/spartanmark6/first_order_trooper.mdl",
	["PLT"] = "models/npc/star wars the force awakens/first order trooper/spartanmark6/first_order_trooper.mdl",
	["FLMTRP"] = "models/player/star wars the force awakens/first order trooper/spartanmark6/first_order_shadowtrooper.mdl",
	["SHDTRP"] = "models/player/star wars the force awakens/first order trooper/spartanmark6/first_order_shadowtrooper.mdl",
	["SHDCMD"] = "models/player/star wars the force awakens/first order trooper/spartanmark6/first_order_shadowtrooper.mdl"
}

-- The default player data when using /data
SCHEMA.defaultData = [[
Name:
Works for the First Order:
Violations:
]]