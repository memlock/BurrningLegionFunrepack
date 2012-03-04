--[[ The Barrens -- Burning Blade Acolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BurningBladeAcolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAcolyte_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeAcolyte_Inmolate", 3000, 2)
end

function BurningBladeAcolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAcolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAcolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3380, 1, "BurningBladeAcolyte_OnCombat")
RegisterUnitEvent(3380, 2, "BurningBladeAcolyte_OnLeaveCombat")
RegisterUnitEvent(3380, 3, "BurningBladeAcolyte_OnKilledTarget")
RegisterUnitEvent(3380, 4, "BurningBladeAcolyte_OnDied")