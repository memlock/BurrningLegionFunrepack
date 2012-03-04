--[[ Grizzly Hills -- Venture Co Evacuee.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function VentureCoEvacuee_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEvacuee_QuickFeet", 5000, 0)
end

function VentureCoEvacuee_QuickFeet(pUnit, Event) 
pUnit:CastSpell(50054) 
end

function VentureCoEvacuee_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEvacuee_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEvacuee_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27830, 1, "VentureCoEvacuee_OnCombat")
RegisterUnitEvent(27830, 2, "VentureCoEvacuee_OnLeaveCombat")
RegisterUnitEvent(27830, 3, "VentureCoEvacuee_OnKilledTarget")
RegisterUnitEvent(27830, 4, "VentureCoEvacuee_OnDied")