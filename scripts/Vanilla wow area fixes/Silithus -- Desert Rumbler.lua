--[[ Silithus -- Desert Rumbler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function DesertRumbler_OnCombat(Unit, Event)
Unit:RegisterEvent("DesertRumbler_Trample", 6000, 0)
end

function DesertRumbler_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function DesertRumbler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DesertRumbler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DesertRumbler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11746, 1, "DesertRumbler_OnCombat")
RegisterUnitEvent(11746, 2, "DesertRumbler_OnLeaveCombat")
RegisterUnitEvent(11746, 3, "DesertRumbler_OnKilledTarget")
RegisterUnitEvent(11746, 4, "DesertRumbler_OnDied")