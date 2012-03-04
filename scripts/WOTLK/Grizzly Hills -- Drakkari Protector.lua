--[[ Grizzly Hills -- Drakkari Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariProtector_HeadTrauma", 7000, 0)
end

function DrakkariProtector_HeadTrauma(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52425, pUnit:GetMainTank()) 
end

function DrakkariProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26797, 1, "DrakkariProtector_OnCombat")
RegisterUnitEvent(26797, 2, "DrakkariProtector_OnLeaveCombat")
RegisterUnitEvent(26797, 3, "DrakkariProtector_OnKilledTarget")
RegisterUnitEvent(26797, 4, "DrakkariProtector_OnDied")