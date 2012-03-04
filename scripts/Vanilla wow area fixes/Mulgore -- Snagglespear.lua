--[[ Mulgore -- Snagglespear.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Snagglespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Snagglespear_Net", 10000, 0)
end

function Snagglespear_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Snagglespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Snagglespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Snagglespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5786, 1, "Snagglespear_OnCombat")
RegisterUnitEvent(5786, 2, "Snagglespear_OnLeaveCombat")
RegisterUnitEvent(5786, 3, "Snagglespear_OnKilledTarget")
RegisterUnitEvent(5786, 4, "Snagglespear_OnDied")