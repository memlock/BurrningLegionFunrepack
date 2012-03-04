--[[ Dragonblight -- 7th Legion Elite2.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionElitetwo_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionElitetwo_Net", 8000, 0)
Unit:RegisterEvent("thLegionElitetwo_Shoot", 6000, 0)
end

function thLegionElitetwo_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionElitetwo_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionElitetwo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionElitetwo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionElitetwo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27713, 1, "thLegionElitetwo_OnCombat")
RegisterUnitEvent(27713, 2, "thLegionElitetwo_OnLeaveCombat")
RegisterUnitEvent(27713, 3, "thLegionElitetwo_OnKilledTarget")
RegisterUnitEvent(27713, 4, "thLegionElitetwo_OnDied")