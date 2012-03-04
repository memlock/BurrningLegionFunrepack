--[[ Borean Tundra -- Wooly Rhino Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WoolyRhinoMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("WoolyRhinoMatriarch_ThickHide", 4000, 1)
end

function WoolyRhinoMatriarch_ThickHide(pUnit, Event) 
pUnit:CastSpell(50502) 
end

function WoolyRhinoMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoolyRhinoMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoolyRhinoMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25487, 1, "WoolyRhinoMatriarch_OnCombat")
RegisterUnitEvent(25487, 2, "WoolyRhinoMatriarch_OnLeaveCombat")
RegisterUnitEvent(25487, 3, "WoolyRhinoMatriarch_OnKilledTarget")
RegisterUnitEvent(25487, 4, "WoolyRhinoMatriarch_OnDied")