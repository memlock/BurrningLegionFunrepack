--[[ Netherstorm -- Gan'arg Mekgineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Mekgineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mekgineer_Drain",1000,0)
    pUnit:RegisterEvent("Mekgineer_Steal",1000,0)
end

function Mekgineer_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36825,pUnit:GetClosestPlayer())
end

function Mekgineer_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Mekgineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mekgineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16949, 1, "Mekgineer_OnEnterCombat")
RegisterUnitEvent (16949, 2, "Mekgineer_OnLeaveCombat")
RegisterUnitEvent (16949, 4, "Mekgineer_OnDied")