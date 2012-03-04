--[[ Durotar -- Corrupted Bloodtalon Scythemaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedBloodtalonScythemaw_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedBloodtalonScythemaw_RushingCharge", 8000, 0)
end

function CorruptedBloodtalonScythemaw_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function CorruptedBloodtalonScythemaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedBloodtalonScythemaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedBloodtalonScythemaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3227, 1, "CorruptedBloodtalonScythemaw_OnCombat")
RegisterUnitEvent(3227, 2, "CorruptedBloodtalonScythemaw_OnLeaveCombat")
RegisterUnitEvent(3227, 3, "CorruptedBloodtalonScythemaw_OnKilledTarget")
RegisterUnitEvent(3227, 4, "CorruptedBloodtalonScythemaw_OnDied")