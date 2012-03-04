--[[ Darkshore -- Mariner Swiftstar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerSwiftstar_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerSwiftstar_Net", 10000, 0)
end

function MarinerSwiftstar_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerSwiftstar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerSwiftstar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerSwiftstar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24997, 1, "MarinerSwiftstar_OnCombat")
RegisterUnitEvent(24997, 2, "MarinerSwiftstar_OnLeaveCombat")
RegisterUnitEvent(24997, 3, "MarinerSwiftstar_OnKilledTarget")
RegisterUnitEvent(24997, 4, "MarinerSwiftstar_OnDied")