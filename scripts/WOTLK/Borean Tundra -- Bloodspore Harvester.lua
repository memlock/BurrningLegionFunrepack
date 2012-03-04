--[[ Borean Tundra -- Bloodspore Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeHarvester_BloodsporeHaze", 10000, 0)
end

function BloodsporeHarvester_BloodsporeHaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50380, pUnit:GetMainTank()) 
end

function BloodsporeHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25467, 1, "BloodsporeHarvester_OnCombat")
RegisterUnitEvent(25467, 2, "BloodsporeHarvester_OnLeaveCombat")
RegisterUnitEvent(25467, 3, "BloodsporeHarvester_OnKilledTarget")
RegisterUnitEvent(25467, 4, "BloodsporeHarvester_OnDied")