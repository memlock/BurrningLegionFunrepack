--[[ Darkshore -- Deth'ryll Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DethryllSatyr_OnCombat(Unit, Event)
Unit:RegisterEvent("DethryllSatyr_Shoot", 6000, 0)
end

function DethryllSatyr_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function DethryllSatyr_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DethryllSatyr_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DethryllSatyr_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2212, 1, "DethryllSatyr_OnCombat")
RegisterUnitEvent(2212, 2, "DethryllSatyr_OnLeaveCombat")
RegisterUnitEvent(2212, 3, "DethryllSatyr_OnKilledTarget")
RegisterUnitEvent(2212, 4, "DethryllSatyr_OnDied")