--[[ The Barrens -- Lost Barrens Kodo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function LostBarrensKodo_OnCombat(Unit, Event)
Unit:RegisterEvent("LostBarrensKodo_KodoStomp", 6000, 0)
end

function LostBarrensKodo_KodoStomp(pUnit, Event) 
pUnit:CastSpell(6266) 
end

function LostBarrensKodo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LostBarrensKodo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LostBarrensKodo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3236, 1, "LostBarrensKodo_OnCombat")
RegisterUnitEvent(3236, 2, "LostBarrensKodo_OnLeaveCombat")
RegisterUnitEvent(3236, 3, "LostBarrensKodo_OnKilledTarget")
RegisterUnitEvent(3236, 4, "LostBarrensKodo_OnDied")