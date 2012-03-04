--[[ Teldrassil -- Gnarlpine Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function GnarlpineWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineWarrior_Strike", 6000, 0)
end

function GnarlpineWarrior_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GnarlpineWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2008, 1, "GnarlpineWarrior_OnCombat")
RegisterUnitEvent(2008, 2, "GnarlpineWarrior_OnLeaveCombat")
RegisterUnitEvent(2008, 3, "GnarlpineWarrior_OnKilledTarget")
RegisterUnitEvent(2008, 4, "GnarlpineWarrior_OnDied")