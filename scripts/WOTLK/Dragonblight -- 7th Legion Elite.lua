--[[ Dragonblight -- 7th Legion Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionElite_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionElite_Net", 8000, 0)
Unit:RegisterEvent("thLegionElite_Shoot", 6000, 0)
end

function thLegionElite_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function thLegionElite_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50092, pUnit:GetMainTank()) 
end

function thLegionElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27588, 1, "thLegionElite_OnCombat")
RegisterUnitEvent(27588, 2, "thLegionElite_OnLeaveCombat")
RegisterUnitEvent(27588, 3, "thLegionElite_OnKilledTarget")
RegisterUnitEvent(27588, 4, "thLegionElite_OnDied")