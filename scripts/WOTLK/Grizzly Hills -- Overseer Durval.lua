--[[ Grizzly Hills -- Overseer Durval.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerDurval_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerDurval_RuneofDestruction", 8000, 0)
end

function OverseerDurval_RuneofDestruction(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52715, pUnit:GetMainTank()) 
end

function OverseerDurval_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerDurval_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerDurval_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26920, 1, "OverseerDurval_OnCombat")
RegisterUnitEvent(26920, 2, "OverseerDurval_OnLeaveCombat")
RegisterUnitEvent(26920, 3, "OverseerDurval_OnKilledTarget")
RegisterUnitEvent(26920, 4, "OverseerDurval_OnDied")