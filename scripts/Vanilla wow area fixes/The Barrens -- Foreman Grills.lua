--[[ The Barrens -- Foreman Grills.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ForemanGrills_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanGrills_Hamstring", 12000, 0)
end

function ForemanGrills_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ForemanGrills_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanGrills_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanGrills_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5835, 1, "ForemanGrills_OnCombat")
RegisterUnitEvent(5835, 2, "ForemanGrills_OnLeaveCombat")
RegisterUnitEvent(5835, 3, "ForemanGrills_OnKilledTarget")
RegisterUnitEvent(5835, 4, "ForemanGrills_OnDied")