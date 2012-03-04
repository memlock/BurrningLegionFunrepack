--[[ Azshara -- Timbermaw Pathfinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimbermawPathfinder_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawPathfinder_FaerieFire", 10000, 0)
end

function TimbermawPathfinder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16498, pUnit:GetMainTank()) 
end

function TimbermawPathfinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawPathfinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawPathfinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6184, 1, "TimbermawPathfinder_OnCombat")
RegisterUnitEvent(6184, 2, "TimbermawPathfinder_OnLeaveCombat")
RegisterUnitEvent(6184, 3, "TimbermawPathfinder_OnKilledTarget")
RegisterUnitEvent(6184, 4, "TimbermawPathfinder_OnDied")