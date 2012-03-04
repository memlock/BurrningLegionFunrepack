--[[ Howling Fjord -- Animated Plague Slime.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function AnimatedPlagueSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("AnimatedPlagueSlime_DarkSludge", 4000, 2)
end

function AnimatedPlagueSlime_DarkSludge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3335, pUnit:GetMainTank()) 
end

function AnimatedPlagueSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnimatedPlagueSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnimatedPlagueSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24279, 1, "AnimatedPlagueSlime_OnCombat")
RegisterUnitEvent(24279, 2, "AnimatedPlagueSlime_OnLeaveCombat")
RegisterUnitEvent(24279, 3, "AnimatedPlagueSlime_OnKilledTarget")
RegisterUnitEvent(24279, 4, "AnimatedPlagueSlime_OnDied")