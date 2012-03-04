--[[ Silithus -- Hive'Regal Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HiveRegalAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalAmbusher_Poison", 10000, 0)
end

function HiveRegalAmbusher_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11730, 1, "HiveRegalAmbusher_OnCombat")
RegisterUnitEvent(11730, 2, "HiveRegalAmbusher_OnLeaveCombat")
RegisterUnitEvent(11730, 3, "HiveRegalAmbusher_OnKilledTarget")
RegisterUnitEvent(11730, 4, "HiveRegalAmbusher_OnDied")