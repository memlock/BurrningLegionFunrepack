--[[ Ashenvale -- Foulweald Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdPathfinder_Shoot", 6000, 0)
end

function FoulwealdPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function FoulwealdPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3745, 1, "FoulwealdPathfinder_OnCombat")
RegisterUnitEvent(3745, 2, "FoulwealdPathfinder_OnLeaveCombat")
RegisterUnitEvent(3745, 3, "FoulwealdPathfinder_OnKilledTarget")
RegisterUnitEvent(3745, 4, "FoulwealdPathfinder_OnDied")