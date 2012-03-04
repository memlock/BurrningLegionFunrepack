--[[ Borean Tundra -- Northsea Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NorthseaMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaMercenary_Crazed", 5000, 1)
end

function NorthseaMercenary_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25839, 1, "NorthseaMercenary_OnCombat")
RegisterUnitEvent(25839, 2, "NorthseaMercenary_OnLeaveCombat")
RegisterUnitEvent(25839, 3, "NorthseaMercenary_OnKilledTarget")
RegisterUnitEvent(25839, 4, "NorthseaMercenary_OnDied")