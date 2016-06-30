--[[
	Define your voice classes here. The function goes:

	nut.voice.defineClass(class, onCheck(client)[, onModify(client, sounds)])

	Class is the same class that starts the nut.voice.register
	It is case-insensitive. The onCheck passes the player trying
	to use the class. Return true to allow them to use the class.
--]]

-- What type of chat modes support voice commands:
nut.voice.chatTypes["ic"] = true
nut.voice.chatTypes["w"] = true
nut.voice.chatTypes["y"] = true
nut.voice.chatTypes["radio"] = true
nut.voice.chatTypes["dispatch"] = true

nut.voice.defineClass("combine", function(client)
	return client:isCombine()
end, function(client, sounds, chatType)
	if (chatType == "dispatch" or client:isCombineRank("SCN")) then
		return false
	end

	local beeps = SCHEMA.beepSounds[client:Team()] or SCHEMA.beepSounds[FACTION_CP]

	table.insert(sounds, 1, {(table.Random(beeps.on)), 0.25})
	sounds[#sounds + 1] = {(table.Random(beeps.off)), nil, 0.25}
end)

nut.voice.defineClass("dispatch", function(client)
	return SCHEMA:isDispatch(client)
end, function(client, sounds, chatType)
	if (chatType != "dispatch") then
		return false
	end
end, true)

--[[

-- Example of citizen class that requires the ciitzen to have 'y' flag.
nut.voice.defineClass("citizen", function(client)
	return client:getChar():hasFlags("y")

end)
--]]

nut.voice.register("combine", "D1", " ", "fg/vo/conscript/die1.wav")
nut.voice.register("combine", "D2", " ", "fg/vo/conscript/die3.wav")
nut.voice.register("combine", "D3", " ", "fg/vo/conscript/die4.wav")