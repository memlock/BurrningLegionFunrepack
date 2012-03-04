--[[ Darkshore -- Mariner Keenstar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerKeenstar_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerKeenstar_Net", 10000, 0)
end

function MarinerKeenstar_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerKeenstar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerKeenstar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerKeenstar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25054, 1, "MarinerKeenstar_OnCombat")
RegisterUnitEvent(25054, 2, "MarinerKeenstar_OnLeaveCombat")
RegisterUnitEvent(25054, 3, "MarinerKeenstar_OnKilledTarget")
RegisterUnitEvent(25054, 4, "MarinerKeenstar_OnDied")