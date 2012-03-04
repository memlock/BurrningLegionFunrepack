--[[ Dragonblight -- 7th Legion Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionRifleman_Net", 8000, 0)
Unit:RegisterEvent("thLegionRifleman_Shoot", 6000, 0)
end

function thLegionRifleman_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27791, 1, "thLegionRifleman_OnCombat")
RegisterUnitEvent(27791, 2, "thLegionRifleman_OnLeaveCombat")
RegisterUnitEvent(27791, 3, "thLegionRifleman_OnKilledTarget")
RegisterUnitEvent(27791, 4, "thLegionRifleman_OnDied")