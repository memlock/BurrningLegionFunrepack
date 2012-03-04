--[[ Ashenvale -- Saltspittle Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleWarrior_DefensiveStance", 1000, 1)
Unit:RegisterEvent("SaltspittleWarrior_ShieldBash", 8000, 0)
Unit:RegisterEvent("SaltspittleWarrior_SunderArmor", 6000, 0)
end

function SaltspittleWarrior_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function SaltspittleWarrior_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function SaltspittleWarrior_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7386, pUnit:GetMainTank()) 
end

function SaltspittleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3739, 1, "SaltspittleWarrior_OnCombat")
RegisterUnitEvent(3739, 2, "SaltspittleWarrior_OnLeaveCombat")
RegisterUnitEvent(3739, 3, "SaltspittleWarrior_OnKilledTarget")
RegisterUnitEvent(3739, 4, "SaltspittleWarrior_OnDied")