--[[ Darkshore -- Mariner Evenmist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerEvenmist_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerEvenmist_Net", 10000, 0)
end

function MarinerEvenmist_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerEvenmist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerEvenmist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerEvenmist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25007, 1, "MarinerEvenmist_OnCombat")
RegisterUnitEvent(25007, 2, "MarinerEvenmist_OnLeaveCombat")
RegisterUnitEvent(25007, 3, "MarinerEvenmist_OnKilledTarget")
RegisterUnitEvent(25007, 4, "MarinerEvenmist_OnDied")