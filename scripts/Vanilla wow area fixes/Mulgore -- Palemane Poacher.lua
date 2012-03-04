--[[ Mulgore -- Palemane Poacher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PalemanePoacher_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemanePoacher_QuickShot", 10000, 0)
Unit:RegisterEvent("PalemanePoacher_Shoot", 6000, 0)
end

function PalemanePoacher_QuickShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1516, pUnit:GetMainTank()) 
end

function PalemanePoacher_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function PalemanePoacher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemanePoacher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemanePoacher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2951, 1, "PalemanePoacher_OnCombat")
RegisterUnitEvent(2951, 2, "PalemanePoacher_OnLeaveCombat")
RegisterUnitEvent(2951, 3, "PalemanePoacher_OnKilledTarget")
RegisterUnitEvent(2951, 4, "PalemanePoacher_OnDied")