--[[ Silithus -- Hive'Regal Hive Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveRegalHiveLord_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalHiveLord_BerserkerCharge", 6000, 0)
end

function HiveRegalHiveLord_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalHiveLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalHiveLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalHiveLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11734, 1, "HiveRegalHiveLord_OnCombat")
RegisterUnitEvent(11734, 2, "HiveRegalHiveLord_OnLeaveCombat")
RegisterUnitEvent(11734, 3, "HiveRegalHiveLord_OnKilledTarget")
RegisterUnitEvent(11734, 4, "HiveRegalHiveLord_OnDied")