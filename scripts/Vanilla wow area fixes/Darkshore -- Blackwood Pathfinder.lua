--[[ Darkshore -- Blackwood Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BlackwoodPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackwoodPathfinder_FaerieFire", 4000, 1)
Unit:RegisterEvent("BlackwoodPathfinder_Thrash", 6000, 0)
end

function BlackwoodPathfinder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function BlackwoodPathfinder_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BlackwoodPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackwoodPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackwoodPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2167, 1, "BlackwoodPathfinder_OnCombat")
RegisterUnitEvent(2167, 2, "BlackwoodPathfinder_OnLeaveCombat")
RegisterUnitEvent(2167, 3, "BlackwoodPathfinder_OnKilledTarget")
RegisterUnitEvent(2167, 4, "BlackwoodPathfinder_OnDied")