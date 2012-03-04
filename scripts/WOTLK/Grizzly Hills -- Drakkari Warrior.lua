--[[ Grizzly Hills -- Drakkari Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWarrior_WarriorsWill", 4000, 1)
end

function DrakkariWarrior_WarriorsWill(pUnit, Event) 
pUnit:CastSpell(52309) 
end

function DrakkariWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26425, 1, "DrakkariWarrior_OnCombat")
RegisterUnitEvent(26425, 2, "DrakkariWarrior_OnLeaveCombat")
RegisterUnitEvent(26425, 3, "DrakkariWarrior_OnKilledTarget")
RegisterUnitEvent(26425, 4, "DrakkariWarrior_OnDied")