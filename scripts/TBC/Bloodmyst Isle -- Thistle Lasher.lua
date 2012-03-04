--[[ Bloodmyst Isle -- Thistle Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function ThistleLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleLasher_Lash", 8000, 0)
end

function ThistleLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31286, pUnit:GetMainTank()) 
end

function ThistleLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17343, 1, "ThistleLasher_OnCombat")
RegisterUnitEvent(17343, 2, "ThistleLasher_OnLeaveCombat")
RegisterUnitEvent(17343, 3, "ThistleLasher_OnKilledTarget")
RegisterUnitEvent(17343, 4, "ThistleLasher_OnDied")