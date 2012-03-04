--[[ Azshara -- Storm Bay Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function StormBayWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("StormBayWarrior_Pummel", 9000, 0)
Unit:RegisterEvent("StormBayWarrior_Strike", 6000, 0)
end

function StormBayWarrior_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function StormBayWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function StormBayWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormBayWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormBayWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6371, 1, "StormBayWarrior_OnCombat")
RegisterUnitEvent(6371, 2, "StormBayWarrior_OnLeaveCombat")
RegisterUnitEvent(6371, 3, "StormBayWarrior_OnKilledTarget")
RegisterUnitEvent(6371, 4, "StormBayWarrior_OnDied")