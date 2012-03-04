--[[ Stonetalon Mountains -- Antlered Courser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function AntleredCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("AntleredCourser_RushingCharge", 8000, 0)
end

function AntleredCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function AntleredCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AntleredCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AntleredCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4018, 1, "AntleredCourser_OnCombat")
RegisterUnitEvent(4018, 2, "AntleredCourser_OnLeaveCombat")
RegisterUnitEvent(4018, 3, "AntleredCourser_OnKilledTarget")
RegisterUnitEvent(4018, 4, "AntleredCourser_OnDied")