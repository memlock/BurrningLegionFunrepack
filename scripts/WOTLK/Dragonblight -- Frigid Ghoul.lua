--[[ Dragonblight -- Frigid Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidGhoul_RotArmor", 8000, 0)
end

function FrigidGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FrigidGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27534, 1, "FrigidGhoul_OnCombat")
RegisterUnitEvent(27534, 2, "FrigidGhoul_OnLeaveCombat")
RegisterUnitEvent(27534, 3, "FrigidGhoul_OnKilledTarget")
RegisterUnitEvent(27534, 4, "FrigidGhoul_OnDied")