--[[ Desolace -- Burning Blade Invoker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeInvoker_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeInvoker_FlameBuffet", 8000, 0)
end

function BurningBladeInvoker_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9658, pUnit:GetMainTank()) 
end

function BurningBladeInvoker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeInvoker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeInvoker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4705, 1, "BurningBladeInvoker_OnCombat")
RegisterUnitEvent(4705, 2, "BurningBladeInvoker_OnLeaveCombat")
RegisterUnitEvent(4705, 3, "BurningBladeInvoker_OnKilledTarget")
RegisterUnitEvent(4705, 4, "BurningBladeInvoker_OnDied")