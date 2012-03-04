--[[ Ashenvale -- Thistlefur Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurPathfinder_Shoot", 6000, 0)
end

function ThistlefurPathfinder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function ThistlefurPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3926, 1, "ThistlefurPathfinder_OnCombat")
RegisterUnitEvent(3926, 2, "ThistlefurPathfinder_OnLeaveCombat")
RegisterUnitEvent(3926, 3, "ThistlefurPathfinder_OnKilledTarget")
RegisterUnitEvent(3926, 4, "ThistlefurPathfinder_OnDied")