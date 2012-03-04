--[[ Borean Tundra -- Bloodspore Roaster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeRoaster_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeRoaster_Roast", 8000, 0)
end

function BloodsporeRoaster_Roast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50402, pUnit:GetMainTank()) 
end

function BloodsporeRoaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeRoaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeRoaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25468, 1, "BloodsporeRoaster_OnCombat")
RegisterUnitEvent(25468, 2, "BloodsporeRoaster_OnLeaveCombat")
RegisterUnitEvent(25468, 3, "BloodsporeRoaster_OnKilledTarget")
RegisterUnitEvent(25468, 4, "BloodsporeRoaster_OnDied")