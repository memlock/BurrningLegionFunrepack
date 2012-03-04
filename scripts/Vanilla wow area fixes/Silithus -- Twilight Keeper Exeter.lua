--[[ Silithus -- Twilight Keeper Exeter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightKeeperExeter_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightKeeperExeter_ConcussionBlow", 10000, 0)
Unit:RegisterEvent("TwilightKeeperExeter_MortalStrike", 8000, 0)
end

function TwilightKeeperExeter_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22427, pUnit:GetMainTank()) 
end

function TwilightKeeperExeter_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function TwilightKeeperExeter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightKeeperExeter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightKeeperExeter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11803, 1, "TwilightKeeperExeter_OnCombat")
RegisterUnitEvent(11803, 2, "TwilightKeeperExeter_OnLeaveCombat")
RegisterUnitEvent(11803, 3, "TwilightKeeperExeter_OnKilledTarget")
RegisterUnitEvent(11803, 4, "TwilightKeeperExeter_OnDied")