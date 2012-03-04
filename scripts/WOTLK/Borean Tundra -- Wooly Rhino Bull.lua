--[[ Borean Tundra -- Wooly Rhino Bull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyRhinoBull_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyRhinoBull_ThickHide", 4000, 1)
end

function WoolyRhinoBull_ThickHide(pUnit, Event) 
pUnit:CastSpell(50502) 
end

function WoolyRhinoBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyRhinoBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyRhinoBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25489, 1, "WoolyRhinoBull_OnCombat")
RegisterUnitEvent(25489, 2, "WoolyRhinoBull_OnLeaveCombat")
RegisterUnitEvent(25489, 3, "WoolyRhinoBull_OnKilledTarget")
RegisterUnitEvent(25489, 4, "WoolyRhinoBull_OnDied")