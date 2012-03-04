--[[ Borean Tundra -- Marsh Caribou.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MarshCaribou_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshCaribou_Gore", 8000, 0)
end

function MarshCaribou_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshCaribou_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshCaribou_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshCaribou_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25680, 1, "MarshCaribou_OnCombat")
RegisterUnitEvent(25680, 2, "MarshCaribou_OnLeaveCombat")
RegisterUnitEvent(25680, 3, "MarshCaribou_OnKilledTarget")
RegisterUnitEvent(25680, 4, "MarshCaribou_OnDied")