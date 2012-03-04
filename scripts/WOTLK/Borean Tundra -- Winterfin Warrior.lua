--[[ Borean Tundra -- Winterfin Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinWarrior_DemoralizingMmmrrrggglll", 8000, 0)
end

function WinterfinWarrior_DemoralizingMmmrrrggglll(pUnit, Event) 
pUnit:CastSpell(50267) 
end

function WinterfinWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25217, 1, "WinterfinWarrior_OnCombat")
RegisterUnitEvent(25217, 2, "WinterfinWarrior_OnLeaveCombat")
RegisterUnitEvent(25217, 3, "WinterfinWarrior_OnKilledTarget")
RegisterUnitEvent(25217, 4, "WinterfinWarrior_OnDied")