--[[ Silithus -- Hive'Zora Wasp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveZoraWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraWasp_Poison", 10000, 0)
end

function HiveZoraWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function HiveZoraWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11727, 1, "HiveZoraWasp_OnCombat")
RegisterUnitEvent(11727, 2, "HiveZoraWasp_OnLeaveCombat")
RegisterUnitEvent(11727, 3, "HiveZoraWasp_OnKilledTarget")
RegisterUnitEvent(11727, 4, "HiveZoraWasp_OnDied")