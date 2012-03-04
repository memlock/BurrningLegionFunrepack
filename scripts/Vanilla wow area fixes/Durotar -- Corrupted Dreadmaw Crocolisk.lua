--[[ Durotar -- Corrupted Dreadmaw Crocolisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedDreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedDreadmawCrocolisk_DecayedAgility", 10000, 1)
end

function CorruptedDreadmawCrocolisk_DecayedAgility(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7901, pUnit:GetMainTank()) 
end

function CorruptedDreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedDreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedDreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3231, 1, "CorruptedDreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3231, 2, "CorruptedDreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3231, 3, "CorruptedDreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3231, 4, "CorruptedDreadmawCrocolisk_OnDied")