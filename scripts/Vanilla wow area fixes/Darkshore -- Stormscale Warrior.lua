--[[ Darkshore -- Stormscale Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StormscaleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("StormscaleWarrior_ImprovedBlocking", 8000, 0)
end

function StormscaleWarrior_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function StormscaleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormscaleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormscaleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2183, 1, "StormscaleWarrior_OnCombat")
RegisterUnitEvent(2183, 2, "StormscaleWarrior_OnLeaveCombat")
RegisterUnitEvent(2183, 3, "StormscaleWarrior_OnKilledTarget")
RegisterUnitEvent(2183, 4, "StormscaleWarrior_OnDied")