--[[ Netherstorm -- Parasitic Fleshbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Beast_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Beast_Rend",15000,0)
    pUnit:RegisterEvent("Beast_Parasite_Spell",6000,0)
    pUnit:RegisterEvent("Beast_Parasite_Spawn",36000,0)
end

function Beast_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13443,pUnit:GetMainTank())
end

function Beast_Parasite_Spell(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36469,pUnit:GetRandomPlayer(0))
end

function Beast_Parasite_Spawn(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36468)
    pUnit:SpawnCreature(21265, x-1, y, z, o, 14, o)
end

function Beast_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

function Beast_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(20335,1,"Beast_OnEnterCombat")
RegisterUnitEvent(20335,2,"Beast_OnLeaveCombat")
RegisterUnitEvent(20335,4,"Beast_OnDied")