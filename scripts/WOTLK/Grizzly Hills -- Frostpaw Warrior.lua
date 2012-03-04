--[[ Grizzly Hills -- Frostpaw Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrostpawWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawWarrior_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("FrostpawWarrior_Pummel", 12000, 0)
Unit:RegisterEvent("FrostpawWarrior_Rend", 10000, 0)
end

function FrostpawWarrior_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function FrostpawWarrior_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function FrostpawWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12054, pUnit:GetMainTank()) 
end

function FrostpawWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26357, 1, "FrostpawWarrior_OnCombat")
RegisterUnitEvent(26357, 2, "FrostpawWarrior_OnLeaveCombat")
RegisterUnitEvent(26357, 3, "FrostpawWarrior_OnKilledTarget")
RegisterUnitEvent(26357, 4, "FrostpawWarrior_OnDied")