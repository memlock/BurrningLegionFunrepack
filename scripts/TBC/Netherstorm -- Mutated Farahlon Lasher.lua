--[[ Netherstorm -- Mutated Farahlon Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Lasher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lasher_Growth",1500,0)
end

function Lasher_Growth(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36604,pUnit:GetClosestPlayer())
end

function Lasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lasher_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20983, 1, "Lasher_OnEnterCombat")
RegisterUnitEvent (20983, 2, "Lasher_OnLeaveCombat")
RegisterUnitEvent (20983, 4, "Lasher_OnDied")