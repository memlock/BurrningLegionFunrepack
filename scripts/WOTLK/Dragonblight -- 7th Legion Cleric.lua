--[[ Dragonblight -- 7th Legion Cleric.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionCleric_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionCleric_Heal", 14000, 0)
Unit:RegisterEvent("thLegionCleric_HolySmite", 6000, 0)
end

function thLegionCleric_Heal(pUnit, Event) 
pUnit:CastSpell(31739) 
end

function thLegionCleric_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25054, pUnit:GetMainTank()) 
end

function thLegionCleric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionCleric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionCleric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26780, 1, "thLegionCleric_OnCombat")
RegisterUnitEvent(26780, 2, "thLegionCleric_OnLeaveCombat")
RegisterUnitEvent(26780, 3, "thLegionCleric_OnKilledTarget")
RegisterUnitEvent(26780, 4, "thLegionCleric_OnDied")