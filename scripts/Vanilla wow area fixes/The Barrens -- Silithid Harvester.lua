--[[ The Barrens -- Silithid Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidHarvester_HarvestSwarm", 6000, 0)
Unit:RegisterEvent("SilithidHarvester_SummonHarvesterSwarm", 3000, 1)
end

function SilithidHarvester_HarvestSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7277, pUnit:GetMainTank()) 
end

function SilithidHarvester_SummonHarvesterSwarm(pUnit, Event) 
pUnit:CastSpell(7278) 
end

function SilithidHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3253, 1, "SilithidHarvester_OnCombat")
RegisterUnitEvent(3253, 2, "SilithidHarvester_OnLeaveCombat")
RegisterUnitEvent(3253, 3, "SilithidHarvester_OnKilledTarget")
RegisterUnitEvent(3253, 4, "SilithidHarvester_OnDied")