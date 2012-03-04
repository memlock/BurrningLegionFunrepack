--[[ The Barrens -- Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("BarrensKodo_KodoStomp", 6000, 0)
end

function BarrensKodo_KodoStomp(pUnit, Event) 
pUnit:CastSpell(6266) 
end

function BarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3236, 1, "BarrensKodo_OnCombat")
RegisterUnitEvent(3236, 2, "BarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3236, 3, "BarrensKodo_OnKilledTarget")
RegisterUnitEvent(3236, 4, "BarrensKodo_OnDied")