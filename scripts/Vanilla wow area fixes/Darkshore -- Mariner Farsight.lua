--[[ Darkshore -- Mariner Farsight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerFarsight_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerFarsight_Net", 10000, 0)
end

function MarinerFarsight_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerFarsight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerFarsight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerFarsight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24998, 1, "MarinerFarsight_OnCombat")
RegisterUnitEvent(24998, 2, "MarinerFarsight_OnLeaveCombat")
RegisterUnitEvent(24998, 3, "MarinerFarsight_OnKilledTarget")
RegisterUnitEvent(24998, 4, "MarinerFarsight_OnDied")