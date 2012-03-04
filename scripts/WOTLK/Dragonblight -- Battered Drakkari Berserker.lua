--[[ Dragonblight -- Battered Drakkari Berserker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BatteredDrakkariBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("BatteredDrakkariBerserker_Enrage", 10000, 1)
Unit:RegisterEvent("BatteredDrakkariBerserker_Knockdown", 6000, 0)
end

function BatteredDrakkariBerserker_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function BatteredDrakkariBerserker_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37592, pUnit:GetMainTank()) 
end

function BatteredDrakkariBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BatteredDrakkariBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BatteredDrakkariBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26943, 1, "BatteredDrakkariBerserker_OnCombat")
RegisterUnitEvent(26943, 2, "BatteredDrakkariBerserker_OnLeaveCombat")
RegisterUnitEvent(26943, 3, "BatteredDrakkariBerserker_OnKilledTarget")
RegisterUnitEvent(26943, 4, "BatteredDrakkariBerserker_OnDied")