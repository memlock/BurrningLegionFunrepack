--[[ Dragonblight -- Plague Eruptor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function PlagueEruptor_OnCombat(Unit, Event)
Unit:RegisterEvent("PlagueEruptor_PlagueCloud", 10000, 0)
end

function PlagueEruptor_PlagueCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49350, pUnit:GetMainTank()) 
end

function PlagueEruptor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlagueEruptor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlagueEruptor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27611, 1, "PlagueEruptor_OnCombat")
RegisterUnitEvent(27611, 2, "PlagueEruptor_OnLeaveCombat")
RegisterUnitEvent(27611, 3, "PlagueEruptor_OnKilledTarget")
RegisterUnitEvent(27611, 4, "PlagueEruptor_OnDied")