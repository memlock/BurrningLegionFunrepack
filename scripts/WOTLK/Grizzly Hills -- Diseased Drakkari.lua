--[[ Grizzly Hills -- Diseased Drakkari.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DiseasedDrakkari_OnCombat(Unit, Event)
Unit:RegisterEvent("DiseasedDrakkari_FeveredDisease", 10000, 0)
end

function DiseasedDrakkari_FeveredDisease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34363, pUnit:GetMainTank()) 
end

function DiseasedDrakkari_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DiseasedDrakkari_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DiseasedDrakkari_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26457, 1, "DiseasedDrakkari_OnCombat")
RegisterUnitEvent(26457, 2, "DiseasedDrakkari_OnLeaveCombat")
RegisterUnitEvent(26457, 3, "DiseasedDrakkari_OnKilledTarget")
RegisterUnitEvent(26457, 4, "DiseasedDrakkari_OnDied")