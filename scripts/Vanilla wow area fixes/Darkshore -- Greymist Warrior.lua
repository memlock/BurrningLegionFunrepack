--[[ Darkshore -- Greymist Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function GreymistWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("GreymistWarrior_BattleShout", 2000, 1)
end

function GreymistWarrior_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function GreymistWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreymistWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreymistWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2205, 1, "GreymistWarrior_OnCombat")
RegisterUnitEvent(2205, 2, "GreymistWarrior_OnLeaveCombat")
RegisterUnitEvent(2205, 3, "GreymistWarrior_OnKilledTarget")
RegisterUnitEvent(2205, 4, "GreymistWarrior_OnDied")