--[[ Durotar -- Burning Blade Apprentice.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeApprentice_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeApprentice_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeApprentice_SummonVoidwalker", 1000, 1)
end

function BurningBladeApprentice_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function BurningBladeApprentice_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function BurningBladeApprentice_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeApprentice_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeApprentice_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3198, 1, "BurningBladeApprentice_OnCombat")
RegisterUnitEvent(3198, 2, "BurningBladeApprentice_OnLeaveCombat")
RegisterUnitEvent(3198, 3, "BurningBladeApprentice_OnKilledTarget")
RegisterUnitEvent(3198, 4, "BurningBladeApprentice_OnDied")