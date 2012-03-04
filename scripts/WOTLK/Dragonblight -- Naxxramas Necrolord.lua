--[[ Dragonblight -- Naxxramas Necrolord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NaxxramasNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxramasNecrolord_ChaosBolt", 6000, 0)
end

function NaxxramasNecrolord_ChaosBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51287, pUnit:GetMainTank()) 
end

function NaxxramasNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxramasNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxramasNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27289, 1, "NaxxramasNecrolord_OnCombat")
RegisterUnitEvent(27289, 2, "NaxxramasNecrolord_OnLeaveCombat")
RegisterUnitEvent(27289, 3, "NaxxramasNecrolord_OnKilledTarget")
RegisterUnitEvent(27289, 4, "NaxxramasNecrolord_OnDied")