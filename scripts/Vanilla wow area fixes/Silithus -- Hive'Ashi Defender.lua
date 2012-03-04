--[[ Silithus -- Hive'Ashi Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveAshiDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveAshiDefender_Disarm", 9000, 0)
end

function HiveAshiDefender_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function HiveAshiDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveAshiDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveAshiDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11722, 1, "HiveAshiDefender_OnCombat")
RegisterUnitEvent(11722, 2, "HiveAshiDefender_OnLeaveCombat")
RegisterUnitEvent(11722, 3, "HiveAshiDefender_OnKilledTarget")
RegisterUnitEvent(11722, 4, "HiveAshiDefender_OnDied")