--[[ Dragonblight -- Risen Wintergarde Miner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RisenWintergardeMiner_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeMiner_PunctureWound", 7000, 0)
end

function RisenWintergardeMiner_PunctureWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48374, pUnit:GetMainTank()) 
end

function RisenWintergardeMiner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeMiner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeMiner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27401, 1, "RisenWintergardeMiner_OnCombat")
RegisterUnitEvent(27401, 2, "RisenWintergardeMiner_OnLeaveCombat")
RegisterUnitEvent(27401, 3, "RisenWintergardeMiner_OnKilledTarget")
RegisterUnitEvent(27401, 4, "RisenWintergardeMiner_OnDied")