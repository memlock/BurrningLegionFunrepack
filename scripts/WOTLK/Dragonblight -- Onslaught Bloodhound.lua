--[[ Dragonblight -- Onslaught Bloodhound.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtBloodhound_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtBloodhound_Maul", 5000, 0)
end

function OnslaughtBloodhound_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function OnslaughtBloodhound_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtBloodhound_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtBloodhound_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27329, 1, "OnslaughtBloodhound_OnCombat")
RegisterUnitEvent(27329, 2, "OnslaughtBloodhound_OnLeaveCombat")
RegisterUnitEvent(27329, 3, "OnslaughtBloodhound_OnKilledTarget")
RegisterUnitEvent(27329, 4, "OnslaughtBloodhound_OnDied")