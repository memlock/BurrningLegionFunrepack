--[[ Ashenvale -- Befouled Water Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BefouledWaterElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("BefouledWaterElemental_FoulChill", 1000, 2)
Unit:RegisterEvent("BefouledWaterElemental_Frostbolt", 8000, 0)
end

function BefouledWaterElemental_FoulChill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6873, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BefouledWaterElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BefouledWaterElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BefouledWaterElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3917, 1, "BefouledWaterElemental_OnCombat")
RegisterUnitEvent(3917, 2, "BefouledWaterElemental_OnLeaveCombat")
RegisterUnitEvent(3917, 3, "BefouledWaterElemental_OnKilledTarget")
RegisterUnitEvent(3917, 4, "BefouledWaterElemental_OnDied")