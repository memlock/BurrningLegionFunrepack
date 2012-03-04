--[[ Thousand Needles -- Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function CloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("CloudSerpent_LightningBolt", 8000, 0)
end

function CloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function CloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4117, 1, "CloudSerpent_OnCombat")
RegisterUnitEvent(4117, 2, "CloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4117, 3, "CloudSerpent_OnKilledTarget")
RegisterUnitEvent(4117, 4, "CloudSerpent_OnDied")