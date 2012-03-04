--[[ Thousand Needles -- Elder Cloud Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function ElderCloudSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderCloudSerpent_LightningBolt", 8000, 0)
end

function ElderCloudSerpent_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8246, pUnit:GetMainTank()) 
end

function ElderCloudSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderCloudSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderCloudSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4119, 1, "ElderCloudSerpent_OnCombat")
RegisterUnitEvent(4119, 2, "ElderCloudSerpent_OnLeaveCombat")
RegisterUnitEvent(4119, 3, "ElderCloudSerpent_OnKilledTarget")
RegisterUnitEvent(4119, 4, "ElderCloudSerpent_OnDied")