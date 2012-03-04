--[[ The Barrens -- Razormane Water Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneWaterSeeker_CreepingMold", 4000, 1)
end

function RazormaneWaterSeeker_CreepingMold(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6278, pUnit:GetMainTank()) 
end

function RazormaneWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3267, 1, "RazormaneWaterSeeker_OnCombat")
RegisterUnitEvent(3267, 2, "RazormaneWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3267, 3, "RazormaneWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3267, 4, "RazormaneWaterSeeker_OnDied")