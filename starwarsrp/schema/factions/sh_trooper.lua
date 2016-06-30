FACTION.name = "fTrooperName"
FACTION.desc = ""
FACTION.color = Color(255, 255, 0)
FACTION.isDefault = false
FACTION.models = {
	"models/npc/star wars the force awakens/first order trooper/spartanmark6/first_order_trooper.mdl"
}
FACTION.weapons = {"sw_weapon_f-11d"}
FACTION.pay = 250
FACTION.isGloballyRecognized = true

function FACTION:onGetDefaultName(client)
	if (SCHEMA.digitsLen >= 1) then
		local digits = math.random(tonumber("1"..string.rep("0", SCHEMA.digitsLen-1)), tonumber(string.rep("9", SCHEMA.digitsLen)))
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks).."."..digits, true
	else
		return SCHEMA.cpPrefix..table.GetFirstValue(SCHEMA.rctRanks), true
	end
end

FACTION_TROOPER = FACTION.index
