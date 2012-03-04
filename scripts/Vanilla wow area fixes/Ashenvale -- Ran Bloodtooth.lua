--[[ Ashenvale -- Ran Bloodtooth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RanBloodtooth_OnCombat(Unit, Event)
Unit:RegisterEvent("RanBloodtooth_MultiShot", 10000, 0)
Unit:RegisterEvent("RanBloodtooth_Shoot", 6000, 0)
end

function RanBloodtooth_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function RanBloodtooth_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RanBloodtooth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RanBloodtooth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RanBloodtooth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3696, 1, "RanBloodtooth_OnCombat")
RegisterUnitEvent(3696, 2, "RanBloodtooth_OnLeaveCombat")
RegisterUnitEvent(3696, 3, "RanBloodtooth_OnKilledTarget")
RegisterUnitEvent(3696, 4, "RanBloodtooth_OnDied")