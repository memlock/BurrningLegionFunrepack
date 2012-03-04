--[[ Ashenvale -- Silverwing Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SilverwingWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingWarrior_Rend", 10000, 0)
end

function SilverwingWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function SilverwingWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12897, 1, "SilverwingWarrior_OnCombat")
RegisterUnitEvent(12897, 2, "SilverwingWarrior_OnLeaveCombat")
RegisterUnitEvent(12897, 3, "SilverwingWarrior_OnKilledTarget")
RegisterUnitEvent(12897, 4, "SilverwingWarrior_OnDied")