--[[ The Barrens -- Stormsnout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Stormsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormsnout_LizardBolt", 6000, 0)
end

function Stormsnout_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3240, 1, "Stormsnout_OnCombat")
RegisterUnitEvent(3240, 2, "Stormsnout_OnLeaveCombat")
RegisterUnitEvent(3240, 3, "Stormsnout_OnKilledTarget")
RegisterUnitEvent(3240, 4, "Stormsnout_OnDied")