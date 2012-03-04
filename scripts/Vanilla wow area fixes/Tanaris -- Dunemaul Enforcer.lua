--[[ Tanaris -- Dunemaul Enforcer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulEnforcer_DemoralizingShout", 10000, 0)
end

function DunemaulEnforcer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function DunemaulEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5472, 1, "DunemaulEnforcer_OnCombat")
RegisterUnitEvent(5472, 2, "DunemaulEnforcer_OnLeaveCombat")
RegisterUnitEvent(5472, 3, "DunemaulEnforcer_OnKilledTarget")
RegisterUnitEvent(5472, 4, "DunemaulEnforcer_OnDied")