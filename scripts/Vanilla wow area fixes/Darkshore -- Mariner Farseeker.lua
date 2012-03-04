--[[ Darkshore -- Mariner Farseeker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerFarseeker_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerFarseeker_Net", 10000, 0)
end

function MarinerFarseeker_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerFarseeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerFarseeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerFarseeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25053, 1, "MarinerFarseeker_OnCombat")
RegisterUnitEvent(25053, 2, "MarinerFarseeker_OnLeaveCombat")
RegisterUnitEvent(25053, 3, "MarinerFarseeker_OnKilledTarget")
RegisterUnitEvent(25053, 4, "MarinerFarseeker_OnDied")