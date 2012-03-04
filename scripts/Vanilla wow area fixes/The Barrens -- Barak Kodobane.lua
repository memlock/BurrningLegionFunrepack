--[[ The Barrens -- Barak Kodobane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BarakKodobane_OnCombat(Unit, Event)
Unit:RegisterEvent("BarakKodobane_Shoot", 6000, 0)
end

function BarakKodobane_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BarakKodobane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarakKodobane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarakKodobane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3394, 1, "BarakKodobane_OnCombat")
RegisterUnitEvent(3394, 2, "BarakKodobane_OnLeaveCombat")
RegisterUnitEvent(3394, 3, "BarakKodobane_OnKilledTarget")
RegisterUnitEvent(3394, 4, "BarakKodobane_OnDied")