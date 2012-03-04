--[[ Durotar -- Razormane Quilboar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneQuilboar_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneQuilboar_RazorMane", 2000, 2)
end

function RazormaneQuilboar_RazorMane(pUnit, Event) 
pUnit:CastSpell(5280) 
end

function RazormaneQuilboar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneQuilboar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneQuilboar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3111, 1, "RazormaneQuilboar_OnCombat")
RegisterUnitEvent(3111, 2, "RazormaneQuilboar_OnLeaveCombat")
RegisterUnitEvent(3111, 3, "RazormaneQuilboar_OnKilledTarget")
RegisterUnitEvent(3111, 4, "RazormaneQuilboar_OnDied")