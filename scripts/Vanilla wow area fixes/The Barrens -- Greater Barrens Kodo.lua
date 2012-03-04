--[[ The Barrens -- Greater Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function GreaterBarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterBarrensKodo_RushingCharge", 8000, 0)
end

function GreaterBarrensKodo_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GreaterBarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterBarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterBarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3235, 1, "GreaterBarrensKodo_OnCombat")
RegisterUnitEvent(3235, 2, "GreaterBarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3235, 3, "GreaterBarrensKodo_OnKilledTarget")
RegisterUnitEvent(3235, 4, "GreaterBarrensKodo_OnDied")