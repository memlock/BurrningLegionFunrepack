--[[ Boss -- Prince Keleseth.lua

This script was written and is protected
by the GPL v2. This script was released
by Azolex of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Azolex, October 26, 2008. ]]
-- I think that i should link skeletons after the whole link die new link respawns, that will save both server's memory and script's functionality 
	
function Keleseth_OnEnterCombat(pUnit,Event)
	pUnit:SendChatMessage(14, 0,"Your blood is mine!")
	pUnit:RegisterEvent("Keleseth_ShadowBolt",3000, 0) 
	pUnit:RegisterEvent("Keleseth_Summon",15000, 0) -- this is incorrect, i will handle this after i get some time
	pUnit:RegisterEvent("Keleseth_FrostTomb",20000, 0)
end

function Keleseth_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(43667,pUnit:GetRandomPlayer(0))
end

function Keleseth_FrostTomb(pUnit,Event)
	pUnit:SendChatMessage(14, 0,"Not so fast.")
	pUnit:FullCastSpellOnTarget(48400,pUnit:GetRandomPlayer(0))
end
-- if someone can help me here, i think this spell can be scripted via lua, the player with this debuff should not move, like dummy applied on player witch haves HP ofc.

function Keleseth_Summon(pUnit,Event)
	pUnit:SendChatMessage(14, 0,"Aranal, lidel! Their fate shall be yours!")
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
end 

-- should be rise emote

function Keleseth_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Keleseth_OnDied(pUnit, event, player)
	pUnit:SendChatMessage(14, 0,"I join... the night.")
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23953, 1, "Keleseth_OnEnterCombat")
RegisterUnitEvent(23953, 2, "Keleseth_OnLeaveCombat")
RegisterUnitEvent(23953, 4, "Keleseth_OnDied")