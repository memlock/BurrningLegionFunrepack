--[[ Bloodmyst Isle -- Veridian Broodling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function VeridianBroodling_OnCombat(Unit, Event)
Unit:RegisterEvent("VeridianBroodling_PoisonBolt", 8000, 0)
end

function VeridianBroodling_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21067, pUnit:GetMainTank()) 
end

function VeridianBroodling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VeridianBroodling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VeridianBroodling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17589, 1, "VeridianBroodling_OnCombat")
RegisterUnitEvent(17589, 2, "VeridianBroodling_OnLeaveCombat")
RegisterUnitEvent(17589, 3, "VeridianBroodling_OnKilledTarget")
RegisterUnitEvent(17589, 4, "VeridianBroodling_OnDied")