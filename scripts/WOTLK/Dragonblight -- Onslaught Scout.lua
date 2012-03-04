--[[ Dragonblight -- Onslaught Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtScout_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtScout_Sprint", 4000, 1)
end

function OnslaughtScout_Sprint(pUnit, Event) 
pUnit:CastSpell(48594) 
end

function OnslaughtScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27332, 1, "OnslaughtScout_OnCombat")
RegisterUnitEvent(27332, 2, "OnslaughtScout_OnLeaveCombat")
RegisterUnitEvent(27332, 3, "OnslaughtScout_OnKilledTarget")
RegisterUnitEvent(27332, 4, "OnslaughtScout_OnDied")