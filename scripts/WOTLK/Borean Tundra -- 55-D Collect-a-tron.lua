--[[ Borean Tundra -- 55-D Collect-a-tron.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DCollectatron_OnCombat(Unit, Event)
Unit:RegisterEvent("DCollectatron_DumpOil", 10000, 0)
end

function DCollectatron_DumpOil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50269, pUnit:GetMainTank()) 
end

function DCollectatron_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DCollectatron_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DCollectatron_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25793, 1, "DCollectatron_OnCombat")
RegisterUnitEvent(25793, 2, "DCollectatron_OnLeaveCombat")
RegisterUnitEvent(25793, 3, "DCollectatron_OnKilledTarget")
RegisterUnitEvent(25793, 4, "DCollectatron_OnDied")