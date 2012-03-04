--[[ Grizzly Hills -- Saronite Horror.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SaroniteHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("SaroniteHorror_SeethingEvil", 3000, 1)
end

function SaroniteHorror_SeethingEvil(pUnit, Event) 
pUnit:CastSpell(52342) 
end

function SaroniteHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaroniteHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaroniteHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26646, 1, "SaroniteHorror_OnCombat")
RegisterUnitEvent(26646, 2, "SaroniteHorror_OnLeaveCombat")
RegisterUnitEvent(26646, 3, "SaroniteHorror_OnKilledTarget")
RegisterUnitEvent(26646, 4, "SaroniteHorror_OnDied")