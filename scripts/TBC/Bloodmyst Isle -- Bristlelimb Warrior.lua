--[[ Bloodmyst Isle -- Bristlelimb Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BristlelimbWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbWarrior_Strike", 6000, 0)
end

function BristlelimbWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function BristlelimbWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17321, 1, "BristlelimbWarrior_OnCombat")
RegisterUnitEvent(17321, 2, "BristlelimbWarrior_OnLeaveCombat")
RegisterUnitEvent(17321, 3, "BristlelimbWarrior_OnKilledTarget")
RegisterUnitEvent(17321, 4, "BristlelimbWarrior_OnDied")