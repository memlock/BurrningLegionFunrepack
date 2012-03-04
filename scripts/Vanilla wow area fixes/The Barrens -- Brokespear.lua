--[[ The Barrens -- Brokespear.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Brokespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Brokespear_SlowingPoison", 15000, 0)
Unit:RegisterEvent("Brokespear_Throw", 5000, 0)
end

function Brokespear_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function Brokespear_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function Brokespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Brokespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Brokespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5838, 1, "Brokespear_OnCombat")
RegisterUnitEvent(5838, 2, "Brokespear_OnLeaveCombat")
RegisterUnitEvent(5838, 3, "Brokespear_OnKilledTarget")
RegisterUnitEvent(5838, 4, "Brokespear_OnDied")