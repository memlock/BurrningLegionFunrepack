--[[ Silithus -- Rock Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function RockStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("RockStalker_Poison", 8000, 0)
Unit:RegisterEvent("RockStalker_Web", 10000, 0)
end

function RockStalker_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function RockStalker_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetRandomPlayer(0)) 
end

function RockStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RockStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RockStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11739, 1, "RockStalker_OnCombat")
RegisterUnitEvent(11739, 2, "RockStalker_OnLeaveCombat")
RegisterUnitEvent(11739, 3, "RockStalker_OnKilledTarget")
RegisterUnitEvent(11739, 4, "RockStalker_OnDied")