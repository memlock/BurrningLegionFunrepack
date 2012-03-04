--[[ Ashenvale -- Horde Deforester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HordeDeforester_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeDeforester_SunderArmor", 6000, 0)
end

function HordeDeforester_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11971, pUnit:GetMainTank()) 
end

function HordeDeforester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeDeforester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeDeforester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11681, 1, "HordeDeforester_OnCombat")
RegisterUnitEvent(11681, 2, "HordeDeforester_OnLeaveCombat")
RegisterUnitEvent(11681, 3, "HordeDeforester_OnKilledTarget")
RegisterUnitEvent(11681, 4, "HordeDeforester_OnDied")