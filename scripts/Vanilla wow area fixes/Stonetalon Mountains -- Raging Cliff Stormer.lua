--[[ Stonetalon Mountains -- Raging Cliff Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RagingCliffStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingCliffStormer_RushingCharge", 10000, 0)
Unit:RegisterEvent("RagingCliffStormer_Thunderclap", 6000, 0)
end

function RagingCliffStormer_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function RagingCliffStormer_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8078, pUnit:GetMainTank()) 
end

function RagingCliffStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingCliffStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingCliffStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4009, 1, "RagingCliffStormer_OnCombat")
RegisterUnitEvent(4009, 2, "RagingCliffStormer_OnLeaveCombat")
RegisterUnitEvent(4009, 3, "RagingCliffStormer_OnKilledTarget")
RegisterUnitEvent(4009, 4, "RagingCliffStormer_OnDied")