--[[ Grizzly Hills -- Venture Co Straggler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function VentureCoStraggler_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoStraggler_Chop", 5000, 0)
end

function VentureCoStraggler_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function VentureCoStraggler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoStraggler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoStraggler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27570, 1, "VentureCoStraggler_OnCombat")
RegisterUnitEvent(27570, 2, "VentureCoStraggler_OnLeaveCombat")
RegisterUnitEvent(27570, 3, "VentureCoStraggler_OnKilledTarget")
RegisterUnitEvent(27570, 4, "VentureCoStraggler_OnDied")