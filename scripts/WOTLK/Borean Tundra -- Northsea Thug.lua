--[[ Borean Tundra -- Northsea Thug.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NorthseaThug_OnCombat(Unit, Event)
Unit:RegisterEvent("NorthseaThug_Crazed", 5000, 1)
end

function NorthseaThug_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function NorthseaThug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NorthseaThug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NorthseaThug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25843, 1, "NorthseaThug_OnCombat")
RegisterUnitEvent(25843, 2, "NorthseaThug_OnLeaveCombat")
RegisterUnitEvent(25843, 3, "NorthseaThug_OnKilledTarget")
RegisterUnitEvent(25843, 4, "NorthseaThug_OnDied")