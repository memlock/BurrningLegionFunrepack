--[[ Mulgore -- Venture Co. Supervisor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VentureCoSupervisor_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoSupervisor_BattleShout", 10000, 2)
end

function VentureCoSupervisor_BattleShout(pUnit, Event) 
pUnit:CastSpell(6673) 
end

function VentureCoSupervisor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoSupervisor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoSupervisor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2979, 1, "VentureCoSupervisor_OnCombat")
RegisterUnitEvent(2979, 2, "VentureCoSupervisor_OnLeaveCombat")
RegisterUnitEvent(2979, 3, "VentureCoSupervisor_OnKilledTarget")
RegisterUnitEvent(2979, 4, "VentureCoSupervisor_OnDied")