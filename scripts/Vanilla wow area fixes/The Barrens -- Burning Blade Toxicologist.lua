--[[ The Barrens -- Burning Blade Toxicologist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BurningBladeToxicologist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeToxicologist_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeToxicologist_Inmolate", 3000, 2)
end

function BurningBladeToxicologist_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeToxicologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeToxicologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeToxicologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12319, 1, "BurningBladeToxicologist_OnCombat")
RegisterUnitEvent(12319, 2, "BurningBladeToxicologist_OnLeaveCombat")
RegisterUnitEvent(12319, 3, "BurningBladeToxicologist_OnKilledTarget")
RegisterUnitEvent(12319, 4, "BurningBladeToxicologist_OnDied")