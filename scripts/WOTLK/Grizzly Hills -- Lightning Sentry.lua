--[[ Grizzly Hills -- Lightning Sentry.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function LightningSentry_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningSentry_ChargedSentryTotem", 4000, 1)
end

function LightningSentry_ChargedSentryTotem(pUnit, Event) 
pUnit:CastSpell(52703) 
end

function LightningSentry_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningSentry_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningSentry_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26407, 1, "LightningSentry_OnCombat")
RegisterUnitEvent(26407, 2, "LightningSentry_OnLeaveCombat")
RegisterUnitEvent(26407, 3, "LightningSentry_OnKilledTarget")
RegisterUnitEvent(26407, 4, "LightningSentry_OnDied")