--[[ Bloodmyst Isle -- Fouled Water Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function FouledWaterSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("FouledWaterSpirit_Bloodbolt", 8000, 0)
Unit:RegisterEvent("FouledWaterSpirit_BloodmystChill", 2000, 1)
end

function FouledWaterSpirit_Bloodbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31281, pUnit:GetMainTank()) 
end

function FouledWaterSpirit_BloodmystChill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31280, pUnit:GetMainTank()) 
end

function FouledWaterSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FouledWaterSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FouledWaterSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17358, 1, "FouledWaterSpirit_OnCombat")
RegisterUnitEvent(17358, 2, "FouledWaterSpirit_OnLeaveCombat")
RegisterUnitEvent(17358, 3, "FouledWaterSpirit_OnKilledTarget")
RegisterUnitEvent(17358, 4, "FouledWaterSpirit_OnDied")