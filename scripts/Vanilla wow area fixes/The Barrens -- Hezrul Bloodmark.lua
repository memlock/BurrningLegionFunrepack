--[[ The Barrens -- Hezrul Bloodmark.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HezrulBloodmark_OnCombat(Unit, Event)
Unit:RegisterEvent("HezrulBloodmark_BloodLeech", 6000, 0)
end

function HezrulBloodmark_BloodLeech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6958, pUnit:GetMainTank()) 
end

function HezrulBloodmark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HezrulBloodmark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HezrulBloodmark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3396, 1, "HezrulBloodmark_OnCombat")
RegisterUnitEvent(3396, 2, "HezrulBloodmark_OnLeaveCombat")
RegisterUnitEvent(3396, 3, "HezrulBloodmark_OnKilledTarget")
RegisterUnitEvent(3396, 4, "HezrulBloodmark_OnDied")