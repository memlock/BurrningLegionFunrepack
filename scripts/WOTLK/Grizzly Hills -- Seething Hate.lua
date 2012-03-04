--[[ Grizzly Hills -- Seething Hate.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SeethingHate_OnCombat(Unit, Event)
Unit:RegisterEvent("SeethingHate_SeethingEvil", 3000, 1)
end

function SeethingHate_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SeethingHate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeethingHate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeethingHate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32429, 1, "SeethingHate_OnCombat")
RegisterUnitEvent(32429, 2, "SeethingHate_OnLeaveCombat")
RegisterUnitEvent(32429, 3, "SeethingHate_OnKilledTarget")
RegisterUnitEvent(32429, 4, "SeethingHate_OnDied")