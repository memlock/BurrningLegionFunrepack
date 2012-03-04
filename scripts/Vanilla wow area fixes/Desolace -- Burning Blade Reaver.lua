--[[ Desolace -- Burning Blade Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeReaver_ArcingSmash", 8000, 0)
end

function BurningBladeReaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function BurningBladeReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4664, 1, "BurningBladeReaver_OnCombat")
RegisterUnitEvent(4664, 2, "BurningBladeReaver_OnLeaveCombat")
RegisterUnitEvent(4664, 3, "BurningBladeReaver_OnKilledTarget")
RegisterUnitEvent(4664, 4, "BurningBladeReaver_OnDied")