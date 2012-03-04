--[[ Azshara -- Spitelash Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SpitelashRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashRaider_FrostShock", 6000, 0)
end

function SpitelashRaider_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function SpitelashRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12204, 1, "SpitelashRaider_OnCombat")
RegisterUnitEvent(12204, 2, "SpitelashRaider_OnLeaveCombat")
RegisterUnitEvent(12204, 3, "SpitelashRaider_OnKilledTarget")
RegisterUnitEvent(12204, 4, "SpitelashRaider_OnDied")