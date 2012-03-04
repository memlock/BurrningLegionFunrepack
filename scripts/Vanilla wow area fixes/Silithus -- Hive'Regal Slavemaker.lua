--[[ Silithus -- Hive'Regal Slavemaker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveRegalSlavemaker_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalSlavemaker_VolatileInfection", 10000, 0)
end

function HiveRegalSlavemaker_VolatileInfection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3584, pUnit:GetMainTank()) 
end

function HiveRegalSlavemaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalSlavemaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalSlavemaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11733, 1, "HiveRegalSlavemaker_OnCombat")
RegisterUnitEvent(11733, 2, "HiveRegalSlavemaker_OnLeaveCombat")
RegisterUnitEvent(11733, 3, "HiveRegalSlavemaker_OnKilledTarget")
RegisterUnitEvent(11733, 4, "HiveRegalSlavemaker_OnDied")