--[[ Silithus -- Hive'Zora Hive Sister.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveZoraHiveSister_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveZoraHiveSister_ToxicSpit", 5000, 0)
end

function HiveZoraHiveSister_ToxicSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7951, pUnit:GetClosestPlayer()) 
end

function HiveZoraHiveSister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveZoraHiveSister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveZoraHiveSister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11729, 1, "HiveZoraHiveSister_OnCombat")
RegisterUnitEvent(11729, 2, "HiveZoraHiveSister_OnLeaveCombat")
RegisterUnitEvent(11729, 3, "HiveZoraHiveSister_OnKilledTarget")
RegisterUnitEvent(11729, 4, "HiveZoraHiveSister_OnDied")