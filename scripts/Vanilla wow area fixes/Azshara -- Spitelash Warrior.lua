--[[ Azshara -- Spitelash Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashWarrior_Disarm", 8000, 0)
end

function SpitelashWarrior_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function SpitelashWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6190, 1, "SpitelashWarrior_OnCombat")
RegisterUnitEvent(6190, 2, "SpitelashWarrior_OnLeaveCombat")
RegisterUnitEvent(6190, 3, "SpitelashWarrior_OnKilledTarget")
RegisterUnitEvent(6190, 4, "SpitelashWarrior_OnDied")