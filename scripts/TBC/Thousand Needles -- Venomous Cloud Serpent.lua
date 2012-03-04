--[[ Thousand Needles -- Venomous Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VenomousCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomousCloudSerpent_DeadlyPoison", 10000, 0)
end

function VenomousCloudSerpent_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function VenomousCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomousCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomousCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4118, 1, "VenomousCloudSerpent_OnCombat")
RegisterUnitEvent(4118, 2, "VenomousCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4118, 3, "VenomousCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4118, 4, "VenomousCloudSerpent_OnDied")