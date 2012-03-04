--[[ Durotar -- Burning Blade Neophyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeNeophyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeNeophyte_Inmolate", 8000, 0)
end

function BurningBladeNeophyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function BurningBladeNeophyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeNeophyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeNeophyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3196, 1, "BurningBladeNeophyte_OnCombat")
RegisterUnitEvent(3196, 2, "BurningBladeNeophyte_OnLeaveCombat")
RegisterUnitEvent(3196, 3, "BurningBladeNeophyte_OnKilledTarget")
RegisterUnitEvent(3196, 4, "BurningBladeNeophyte_OnDied")