--[[ Dragonblight -- Indule Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleWarrior_SpectralStrike", 6000, 0)
end

function InduleWarrior_SpectralStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51786, pUnit:GetMainTank()) 
end

function InduleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26344, 1, "InduleWarrior_OnCombat")
RegisterUnitEvent(26344, 2, "InduleWarrior_OnLeaveCombat")
RegisterUnitEvent(26344, 3, "InduleWarrior_OnKilledTarget")
RegisterUnitEvent(26344, 4, "InduleWarrior_OnDied")