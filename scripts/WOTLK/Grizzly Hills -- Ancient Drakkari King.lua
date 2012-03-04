--[[ Grizzly Hills -- Ancient Drakkari King.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariKing_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariKing_DrakkariCurse", 8000, 0)
end

function AncientDrakkariKing_DrakkariCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52466, pUnit:GetMainTank()) 
end

function AncientDrakkariKing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariKing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariKing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26871, 1, "AncientDrakkariKing_OnCombat")
RegisterUnitEvent(26871, 2, "AncientDrakkariKing_OnLeaveCombat")
RegisterUnitEvent(26871, 3, "AncientDrakkariKing_OnKilledTarget")
RegisterUnitEvent(26871, 4, "AncientDrakkariKing_OnDied")