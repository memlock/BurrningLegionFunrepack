--[[ Ashenvale -- Splintertree Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SplintertreeRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("SplintertreeRaider_Enrage", 10000, 0)
end

function SplintertreeRaider_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function SplintertreeRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SplintertreeRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SplintertreeRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12859, 1, "SplintertreeRaider_OnCombat")
RegisterUnitEvent(12859, 2, "SplintertreeRaider_OnLeaveCombat")
RegisterUnitEvent(12859, 3, "SplintertreeRaider_OnKilledTarget")
RegisterUnitEvent(12859, 4, "SplintertreeRaider_OnDied")