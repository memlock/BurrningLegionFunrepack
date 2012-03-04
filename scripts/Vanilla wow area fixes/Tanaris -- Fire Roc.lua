--[[ Tanaris -- Fire Roc.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function FireRoc_OnCombat(Unit, Event)
Unit:RegisterEvent("FireRoc_Flamespit", 6000, 0)
end

function FireRoc_Flamespit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11021, pUnit:GetMainTank()) 
end

function FireRoc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FireRoc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FireRoc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5429, 1, "FireRoc_OnCombat")
RegisterUnitEvent(5429, 2, "FireRoc_OnLeaveCombat")
RegisterUnitEvent(5429, 3, "FireRoc_OnKilledTarget")
RegisterUnitEvent(5429, 4, "FireRoc_OnDied")