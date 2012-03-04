--[[ Desolace -- Demon Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DemonSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("DemonSpirit_SummonedDemon", 5000, 1)
end

function DemonSpirit_SummonedDemon(pUnit, Event) 
pUnit:CastSpell(7741) 
end

function DemonSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DemonSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DemonSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11876, 1, "DemonSpirit_OnCombat")
RegisterUnitEvent(11876, 2, "DemonSpirit_OnLeaveCombat")
RegisterUnitEvent(11876, 3, "DemonSpirit_OnKilledTarget")
RegisterUnitEvent(11876, 4, "DemonSpirit_OnDied")