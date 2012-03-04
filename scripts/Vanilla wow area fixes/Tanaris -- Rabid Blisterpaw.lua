--[[ Tanaris -- Rabid Blisterpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RabidBlisterpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidBlisterpaw_Rabies", 10000, 1)
end

function RabidBlisterpaw_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3150, pUnit:GetMainTank()) 
end

function RabidBlisterpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidBlisterpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidBlisterpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5427, 1, "RabidBlisterpaw_OnCombat")
RegisterUnitEvent(5427, 2, "RabidBlisterpaw_OnLeaveCombat")
RegisterUnitEvent(5427, 3, "RabidBlisterpaw_OnKilledTarget")
RegisterUnitEvent(5427, 4, "RabidBlisterpaw_OnDied")