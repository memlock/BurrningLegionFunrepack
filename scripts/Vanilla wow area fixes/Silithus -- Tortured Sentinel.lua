--[[ Silithus -- Tortured Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TorturedSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturedSentinel_SummonHiveAshiDrones", 2000, 1)
end

function TorturedSentinel_SummonHiveAshiDrones(pUnit, Event) 
pUnit:CastSpell(21327) 
end

function TorturedSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturedSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturedSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12179, 1, "TorturedSentinel_OnCombat")
RegisterUnitEvent(12179, 2, "TorturedSentinel_OnLeaveCombat")
RegisterUnitEvent(12179, 3, "TorturedSentinel_OnKilledTarget")
RegisterUnitEvent(12179, 4, "TorturedSentinel_OnDied")