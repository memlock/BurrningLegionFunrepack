--[[ Grizzly Hills -- Forgemaster Damrath.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ForgemasterDamrath_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgemasterDamrath_ForgeForce", 7000, 0)
end

function ForgemasterDamrath_ForgeForce(pUnit, Event) 
pUnit:CastSpell(52640) 
end

function ForgemasterDamrath_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgemasterDamrath_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgemasterDamrath_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26334, 1, "ForgemasterDamrath_OnCombat")
RegisterUnitEvent(26334, 2, "ForgemasterDamrath_OnLeaveCombat")
RegisterUnitEvent(26334, 3, "ForgemasterDamrath_OnKilledTarget")
RegisterUnitEvent(26334, 4, "ForgemasterDamrath_OnDied")