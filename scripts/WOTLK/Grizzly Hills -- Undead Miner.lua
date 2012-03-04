--[[ Grizzly Hills -- Undead Miner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function UndeadMiner_OnCombat(Unit, Event)
Unit:RegisterEvent("UndeadMiner_PunctureWound", 7000, 0)
Unit:RegisterEvent("UndeadMiner_ThrowLantern", 9000, 1)
end

function UndeadMiner_PunctureWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48374, pUnit:GetMainTank()) 
end

function UndeadMiner_ThrowLantern(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52608, pUnit:GetMainTank()) 
end

function UndeadMiner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UndeadMiner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UndeadMiner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26891, 1, "UndeadMiner_OnCombat")
RegisterUnitEvent(26891, 2, "UndeadMiner_OnLeaveCombat")
RegisterUnitEvent(26891, 3, "UndeadMiner_OnKilledTarget")
RegisterUnitEvent(26891, 4, "UndeadMiner_OnDied")