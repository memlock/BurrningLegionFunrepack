--[[ Dragonblight -- Corrupted Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CorruptedRager_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedRager_CorrodeArmor", 8000, 0)
end

function CorruptedRager_CorrodeArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51613, pUnit:GetMainTank()) 
end

function CorruptedRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21223, 1, "CorruptedRager_OnCombat")
RegisterUnitEvent(21223, 2, "CorruptedRager_OnLeaveCombat")
RegisterUnitEvent(21223, 3, "CorruptedRager_OnKilledTarget")
RegisterUnitEvent(21223, 4, "CorruptedRager_OnDied")