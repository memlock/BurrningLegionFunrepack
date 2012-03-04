--[[ Ashenvale -- Forsaken Herbalist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenHerbalist_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenHerbalist_ContagionofRot", 2000, 2)
end

function ForsakenHerbalist_ContagionofRot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7102, pUnit:GetMainTank()) 
end

function ForsakenHerbalist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenHerbalist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenHerbalist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3733, 1, "ForsakenHerbalist_OnCombat")
RegisterUnitEvent(3733, 2, "ForsakenHerbalist_OnLeaveCombat")
RegisterUnitEvent(3733, 3, "ForsakenHerbalist_OnKilledTarget")
RegisterUnitEvent(3733, 4, "ForsakenHerbalist_OnDied")