--[[ Azshara -- Spitelash Serpent Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashSerpentGuard_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashSerpentGuard_FrostShock", 6000, 0)
end

function SpitelashSerpentGuard_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashSerpentGuard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashSerpentGuard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashSerpentGuard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6194, 1, "SpitelashSerpentGuard_OnCombat")
RegisterUnitEvent(6194, 2, "SpitelashSerpentGuard_OnLeaveCombat")
RegisterUnitEvent(6194, 3, "SpitelashSerpentGuard_OnKilledTarget")
RegisterUnitEvent(6194, 4, "SpitelashSerpentGuard_OnDied")