--[[ Azshara -- Mosshoof Courser.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MosshoofCourser_OnCombat(Unit, Event)
Unit:RegisterEvent("MosshoofCourser_Enrage", 10000, 0)
end

function MosshoofCourser_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function MosshoofCourser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MosshoofCourser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MosshoofCourser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8761, 1, "MosshoofCourser_OnCombat")
RegisterUnitEvent(8761, 2, "MosshoofCourser_OnLeaveCombat")
RegisterUnitEvent(8761, 3, "MosshoofCourser_OnKilledTarget")
RegisterUnitEvent(8761, 4, "MosshoofCourser_OnDied")