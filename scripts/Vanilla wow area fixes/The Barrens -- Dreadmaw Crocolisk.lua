--[[ The Barrens -- Dreadmaw Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function DreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadmawCrocolisk_MuscleTear", 8000, 0)
end

function DreadmawCrocolisk_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function DreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3110, 1, "DreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3110, 2, "DreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3110, 3, "DreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3110, 4, "DreadmawCrocolisk_OnDied")