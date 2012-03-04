--[[ Ashenvale -- Rorgish Jowl.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RorgishJowl_OnCombat(Unit, Event)
Unit:RegisterEvent("RorgishJowl_Thrash", 5000, 0)
end

function RorgishJowl_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function RorgishJowl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RorgishJowl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RorgishJowl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10639, 1, "RorgishJowl_OnCombat")
RegisterUnitEvent(10639, 2, "RorgishJowl_OnLeaveCombat")
RegisterUnitEvent(10639, 3, "RorgishJowl_OnKilledTarget")
RegisterUnitEvent(10639, 4, "RorgishJowl_OnDied")