--[[ Dragonblight -- Reanimated Noble.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedNoble_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedNoble_SanguineStrike", 8000, 0)
end

function ReanimatedNoble_SanguineStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51285, pUnit:GetMainTank()) 
end

function ReanimatedNoble_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedNoble_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedNoble_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27552, 1, "ReanimatedNoble_OnCombat")
RegisterUnitEvent(27552, 2, "ReanimatedNoble_OnLeaveCombat")
RegisterUnitEvent(27552, 3, "ReanimatedNoble_OnKilledTarget")
RegisterUnitEvent(27552, 4, "ReanimatedNoble_OnDied")