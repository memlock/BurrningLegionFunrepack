--[[ Netherstorm -- Farahlon Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Lasher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lasher_Enrage",1000,0)
    pUnit:RegisterEvent("Lasher_Roots",1500,0)
    pUnit:RegisterEvent("Lasher_Growth",500,0)
end

function Lasher_Enrage(pUnit,Event)
    pUnit:CastSpell(3019)
end

function Lasher_Roots(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12747,pUnit:GetClosestPlayer())
end

function Lasher_Growth(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36604,pUnit:GetClosestPlayer())
end

function Lasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lasher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20774, 1, "Lasher_OnEnterCombat")
RegisterUnitEvent (20774, 2, "Lasher_OnLeaveCombat")
RegisterUnitEvent (20774, 4, "Lasher_OnDied")
