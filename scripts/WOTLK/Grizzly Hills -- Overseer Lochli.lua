--[[ Grizzly Hills -- Overseer Lochli.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerLochli_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerLochli_Thunderstorm", 11000, 0)
end

function OverseerLochli_Thunderstorm(pUnit, Event) 
pUnit:CastSpell(52717) 
end

function OverseerLochli_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerLochli_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerLochli_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26922, 1, "OverseerLochli_OnCombat")
RegisterUnitEvent(26922, 2, "OverseerLochli_OnLeaveCombat")
RegisterUnitEvent(26922, 3, "OverseerLochli_OnKilledTarget")
RegisterUnitEvent(26922, 4, "OverseerLochli_OnDied")