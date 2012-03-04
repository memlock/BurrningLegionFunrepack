--[[ Dragonblight -- Onslaught Workman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtWorkman_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtWorkman_Chop", 7000, 0)
end

function OnslaughtWorkman_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function OnslaughtWorkman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtWorkman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtWorkman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27207, 1, "OnslaughtWorkman_OnCombat")
RegisterUnitEvent(27207, 2, "OnslaughtWorkman_OnLeaveCombat")
RegisterUnitEvent(27207, 3, "OnslaughtWorkman_OnKilledTarget")
RegisterUnitEvent(27207, 4, "OnslaughtWorkman_OnDied")