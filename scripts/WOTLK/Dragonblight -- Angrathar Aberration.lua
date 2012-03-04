--[[ Dragonblight -- Angrathar Aberration.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AngratharAberration_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharAberration_Enrage", 1000, 1)
end

function AngratharAberration_Enrage(pUnit, Event) 
pUnit:CastSpell(31540) 
end

function AngratharAberration_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharAberration_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharAberration_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27631, 1, "AngratharAberration_OnCombat")
RegisterUnitEvent(27631, 2, "AngratharAberration_OnLeaveCombat")
RegisterUnitEvent(27631, 3, "AngratharAberration_OnKilledTarget")
RegisterUnitEvent(27631, 4, "AngratharAberration_OnDied")