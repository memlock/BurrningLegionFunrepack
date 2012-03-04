--[[ Grizzly Hills -- Grizzlesnout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Grizzlesnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Grizzlesnout_GnawBone", 8000, 0)
end

function Grizzlesnout_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Grizzlesnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grizzlesnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grizzlesnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27523, 1, "Grizzlesnout_OnCombat")
RegisterUnitEvent(27523, 2, "Grizzlesnout_OnLeaveCombat")
RegisterUnitEvent(27523, 3, "Grizzlesnout_OnKilledTarget")
RegisterUnitEvent(27523, 4, "Grizzlesnout_OnDied")