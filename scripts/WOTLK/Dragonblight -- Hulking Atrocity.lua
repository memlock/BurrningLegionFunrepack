--[[ Dragonblight -- Hulking Atrocity.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HulkingAtrocity_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingAtrocity_InfectedBite", 7000, 0)
end

function HulkingAtrocity_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function HulkingAtrocity_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingAtrocity_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingAtrocity_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26948, 1, "HulkingAtrocity_OnCombat")
RegisterUnitEvent(26948, 2, "HulkingAtrocity_OnLeaveCombat")
RegisterUnitEvent(26948, 3, "HulkingAtrocity_OnKilledTarget")
RegisterUnitEvent(26948, 4, "HulkingAtrocity_OnDied")