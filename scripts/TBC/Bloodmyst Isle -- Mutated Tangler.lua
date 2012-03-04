--[[ Bloodmyst Isle -- Mutated Tangler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function MutatedTangler_OnCombat(Unit, Event)
Unit:RegisterEvent("MutatedTangler_EntanglingRoots", 10000, 0)
end

function MutatedTangler_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31287, pUnit:GetMainTank()) 
end

function MutatedTangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MutatedTangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MutatedTangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17346, 1, "MutatedTangler_OnCombat")
RegisterUnitEvent(17346, 2, "MutatedTangler_OnLeaveCombat")
RegisterUnitEvent(17346, 3, "MutatedTangler_OnKilledTarget")
RegisterUnitEvent(17346, 4, "MutatedTangler_OnDied")