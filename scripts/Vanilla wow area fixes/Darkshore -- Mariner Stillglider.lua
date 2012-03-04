--[[ Darkshore -- Mariner Stillglider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MarinerStillglider_OnCombat(Unit, Event)
Unit:RegisterEvent("MarinerStillglider_Net", 10000, 0)
end

function MarinerStillglider_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function MarinerStillglider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarinerStillglider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarinerStillglider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25056, 1, "MarinerStillglider_OnCombat")
RegisterUnitEvent(25056, 2, "MarinerStillglider_OnLeaveCombat")
RegisterUnitEvent(25056, 3, "MarinerStillglider_OnKilledTarget")
RegisterUnitEvent(25056, 4, "MarinerStillglider_OnDied")