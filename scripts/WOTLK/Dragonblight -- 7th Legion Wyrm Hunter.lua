--[[ Dragonblight -- 7th Legion Wyrm Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function thLegionWyrmHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionWyrmHunter_Shoot", 6000, 0)
end

function thLegionWyrmHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function thLegionWyrmHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionWyrmHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionWyrmHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26779, 1, "thLegionWyrmHunter_OnCombat")
RegisterUnitEvent(26779, 2, "thLegionWyrmHunter_OnLeaveCombat")
RegisterUnitEvent(26779, 3, "thLegionWyrmHunter_OnKilledTarget")
RegisterUnitEvent(26779, 4, "thLegionWyrmHunter_OnDied")