--[[ Grizzly Hills -- Drakkari Plague Spreader.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariPlagueSpreader_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariPlagueSpreader_PlagueInfected", 10000, 0)
end

function DrakkariPlagueSpreader_PlagueInfected(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52230, pUnit:GetMainTank()) 
end

function DrakkariPlagueSpreader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariPlagueSpreader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariPlagueSpreader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27941, 1, "DrakkariPlagueSpreader_OnCombat")
RegisterUnitEvent(27941, 2, "DrakkariPlagueSpreader_OnLeaveCombat")
RegisterUnitEvent(27941, 3, "DrakkariPlagueSpreader_OnKilledTarget")
RegisterUnitEvent(27941, 4, "DrakkariPlagueSpreader_OnDied")