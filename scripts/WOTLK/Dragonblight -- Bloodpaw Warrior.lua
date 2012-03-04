--[[ Dragonblight -- Bloodpaw Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BloodpawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodpawWarrior_Maul", 5000, 0)
end

function BloodpawWarrior_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function BloodpawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodpawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodpawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27342, 1, "BloodpawWarrior_OnCombat")
RegisterUnitEvent(27342, 2, "BloodpawWarrior_OnLeaveCombat")
RegisterUnitEvent(27342, 3, "BloodpawWarrior_OnKilledTarget")
RegisterUnitEvent(27342, 4, "BloodpawWarrior_OnDied")