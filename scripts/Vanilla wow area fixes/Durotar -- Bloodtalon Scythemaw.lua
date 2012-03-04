--[[ Durotar -- Bloodtalon Scythemaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodtalonScythemaw_RushingCharge", 8000, 0)
end

function BloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function BloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3123, 1, "BloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3123, 2, "BloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3123, 3, "BloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3123, 4, "BloodtalonScythemaw_OnDied")