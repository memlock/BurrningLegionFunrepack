--[[ Durotar -- Burning Blade Fanatic.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function BurningBladeFanatic_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeFanatic_FanaticBlade", 8000, 0)
end

function BurningBladeFanatic_FanaticBlade(pUnit, Event) 
pUnit:CastSpell(5262) 
end

function BurningBladeFanatic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeFanatic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeFanatic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3197, 1, "BurningBladeFanatic_OnCombat")
RegisterUnitEvent(3197, 2, "BurningBladeFanatic_OnLeaveCombat")
RegisterUnitEvent(3197, 3, "BurningBladeFanatic_OnKilledTarget")
RegisterUnitEvent(3197, 4, "BurningBladeFanatic_OnDied")