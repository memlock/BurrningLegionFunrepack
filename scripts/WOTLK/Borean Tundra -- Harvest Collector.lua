--[[ Borean Tundra -- Harvest Collector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HarvestCollector_OnCombat(Unit, Event)
Unit:RegisterEvent("HarvestCollector_ClawSlash", 6000, 0)
end

function HarvestCollector_ClawSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(54185, pUnit:GetMainTank()) 
end

function HarvestCollector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarvestCollector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarvestCollector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25623, 1, "HarvestCollector_OnCombat")
RegisterUnitEvent(25623, 2, "HarvestCollector_OnLeaveCombat")
RegisterUnitEvent(25623, 3, "HarvestCollector_OnKilledTarget")
RegisterUnitEvent(25623, 4, "HarvestCollector_OnDied")