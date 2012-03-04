--[[ Dragonblight -- 7th Legion Cavalier.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionCavalier_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionCavalier_MortalStrike", 8000, 0)
Unit:RegisterEvent("thLegionCavalier_SnapKick", 6000, 0)
end

function thLegionCavalier_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19643, pUnit:GetMainTank()) 
end

function thLegionCavalier_SnapKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15618, pUnit:GetMainTank()) 
end

function thLegionCavalier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionCavalier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionCavalier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27161, 1, "thLegionCavalier_OnCombat")
RegisterUnitEvent(27161, 2, "thLegionCavalier_OnLeaveCombat")
RegisterUnitEvent(27161, 3, "thLegionCavalier_OnKilledTarget")
RegisterUnitEvent(27161, 4, "thLegionCavalier_OnDied")