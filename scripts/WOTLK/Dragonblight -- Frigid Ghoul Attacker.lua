--[[ Dragonblight -- Frigid Ghoul Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidGhoulAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoulAttacker_RotArmor", 8000, 0)
end

function FrigidGhoulAttacker_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoulAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoulAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoulAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27685, 1, "FrigidGhoulAttacker_OnCombat")
RegisterUnitEvent(27685, 2, "FrigidGhoulAttacker_OnLeaveCombat")
RegisterUnitEvent(27685, 3, "FrigidGhoulAttacker_OnKilledTarget")
RegisterUnitEvent(27685, 4, "FrigidGhoulAttacker_OnDied")