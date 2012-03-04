--[[ Borean Tundra -- Nerub'ar Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWarrior_Rush", 8000, 0)
end

function NerubarWarrior_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function NerubarWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25619, 1, "NerubarWarrior_OnCombat")
RegisterUnitEvent(25619, 2, "NerubarWarrior_OnLeaveCombat")
RegisterUnitEvent(25619, 3, "NerubarWarrior_OnKilledTarget")
RegisterUnitEvent(25619, 4, "NerubarWarrior_OnDied")