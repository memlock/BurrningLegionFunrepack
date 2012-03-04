--[[ Silithus -- Hive'Regal Spitfire.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveRegalSpitfire_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalSpitfire_CorrosiveAcidSpit", 8000, 0)
end

function HiveRegalSpitfire_CorrosiveAcidSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21047, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalSpitfire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalSpitfire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalSpitfire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11732, 1, "HiveRegalSpitfire_OnCombat")
RegisterUnitEvent(11732, 2, "HiveRegalSpitfire_OnLeaveCombat")
RegisterUnitEvent(11732, 3, "HiveRegalSpitfire_OnKilledTarget")
RegisterUnitEvent(11732, 4, "HiveRegalSpitfire_OnDied")