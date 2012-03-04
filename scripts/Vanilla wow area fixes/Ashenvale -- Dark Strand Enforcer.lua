--[[ Ashenvale -- Dark Strand Enforcer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandEnforcer_Enrage", 10000, 0)
end

function DarkStrandEnforcer_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function DarkStrandEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3727, 1, "DarkStrandEnforcer_OnCombat")
RegisterUnitEvent(3727, 2, "DarkStrandEnforcer_OnLeaveCombat")
RegisterUnitEvent(3727, 3, "DarkStrandEnforcer_OnKilledTarget")
RegisterUnitEvent(3727, 4, "DarkStrandEnforcer_OnDied")