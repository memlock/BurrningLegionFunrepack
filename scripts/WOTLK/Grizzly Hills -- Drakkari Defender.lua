--[[ Grizzly Hills -- Drakkari Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariDefender_Cleave", 8000, 0)
end

function DrakkariDefender_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function DrakkariDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26704, 1, "DrakkariDefender_OnCombat")
RegisterUnitEvent(26704, 2, "DrakkariDefender_OnLeaveCombat")
RegisterUnitEvent(26704, 3, "DrakkariDefender_OnKilledTarget")
RegisterUnitEvent(26704, 4, "DrakkariDefender_OnDied")