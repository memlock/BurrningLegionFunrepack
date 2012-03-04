--[[ Stonetalon Mountains -- Great Courser.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GreatCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("GreatCourser_RushingCharge", 8000, 0)
end

function GreatCourser_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreatCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreatCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreatCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4019, 1, "GreatCourser_OnCombat")
RegisterUnitEvent(4019, 2, "GreatCourser_OnLeaveCombat")
RegisterUnitEvent(4019, 3, "GreatCourser_OnKilledTarget")
RegisterUnitEvent(4019, 4, "GreatCourser_OnDied")