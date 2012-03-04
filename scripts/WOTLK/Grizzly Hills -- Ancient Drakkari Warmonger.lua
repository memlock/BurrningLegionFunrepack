--[[ Grizzly Hills -- Ancient Drakkari Warmonger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariWarmonger_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariWarmonger_SunderArmor", 6000, 0)
end

function AncientDrakkariWarmonger_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function AncientDrakkariWarmonger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariWarmonger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariWarmonger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26811, 1, "AncientDrakkariWarmonger_OnCombat")
RegisterUnitEvent(26811, 2, "AncientDrakkariWarmonger_OnLeaveCombat")
RegisterUnitEvent(26811, 3, "AncientDrakkariWarmonger_OnKilledTarget")
RegisterUnitEvent(26811, 4, "AncientDrakkariWarmonger_OnDied")