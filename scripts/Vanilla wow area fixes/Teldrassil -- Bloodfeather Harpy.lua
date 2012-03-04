--[[ Teldrassil -- Bloodfeather Harpy.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherHarpy_BloodLeech", 6000, 0)
end

function BloodfeatherHarpy_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function BloodfeatherHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2015, 1, "BloodfeatherHarpy_OnCombat")
RegisterUnitEvent(2015, 2, "BloodfeatherHarpy_OnLeaveCombat")
RegisterUnitEvent(2015, 3, "BloodfeatherHarpy_OnKilledTarget")
RegisterUnitEvent(2015, 4, "BloodfeatherHarpy_OnDied")