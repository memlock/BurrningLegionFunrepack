--[[ Thousand Needles -- Screeching Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ScreechingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingHarpy_DeafeningScreech", 10000, 0)
end

function ScreechingHarpy_DeafeningScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3589, pUnit:GetMainTank()) 
end

function ScreechingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4100, 1, "ScreechingHarpy_OnCombat")
RegisterUnitEvent(4100, 2, "ScreechingHarpy_OnLeaveCombat")
RegisterUnitEvent(4100, 3, "ScreechingHarpy_OnKilledTarget")
RegisterUnitEvent(4100, 4, "ScreechingHarpy_OnDied")