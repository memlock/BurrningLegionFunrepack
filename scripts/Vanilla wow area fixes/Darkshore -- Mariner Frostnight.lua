--[[ Darkshore -- Mariner Frostnight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerFrostnight_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerFrostnight_Net", 10000, 0)
end

function MarinerFrostnight_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerFrostnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerFrostnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerFrostnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25055, 1, "MarinerFrostnight_OnCombat")
RegisterUnitEvent(25055, 2, "MarinerFrostnight_OnLeaveCombat")
RegisterUnitEvent(25055, 3, "MarinerFrostnight_OnKilledTarget")
RegisterUnitEvent(25055, 4, "MarinerFrostnight_OnDied")