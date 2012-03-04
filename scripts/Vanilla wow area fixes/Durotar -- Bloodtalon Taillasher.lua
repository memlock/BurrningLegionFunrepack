--[[ Durotar -- Bloodtalon Taillasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BloodtalonTaillasher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonTaillasher_RushingCharge", 8000, 0)
end

function BloodtalonTaillasher_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonTaillasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonTaillasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonTaillasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3122, 1, "BloodtalonTaillasher_OnCombat")
RegisterUnitEvent(3122, 2, "BloodtalonTaillasher_OnLeaveCombat")
RegisterUnitEvent(3122, 3, "BloodtalonTaillasher_OnKilledTarget")
RegisterUnitEvent(3122, 4, "BloodtalonTaillasher_OnDied")