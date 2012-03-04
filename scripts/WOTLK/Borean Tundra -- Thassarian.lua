--[[ Borean Tundra -- Thassarian.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Thassarian_OnCombat(Unit, Event)
Unit:RegisterEvent("Thassarian_EmpoweredBloodPresence", 1000, 1)
end

function Thassarian_EmpoweredBloodPresence(pUnit, Event) 
pUnit:CastSpell(50995) 
end

function Thassarian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thassarian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thassarian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26170, 1, "Thassarian_OnCombat")
RegisterUnitEvent(26170, 2, "Thassarian_OnLeaveCombat")
RegisterUnitEvent(26170, 3, "Thassarian_OnKilledTarget")
RegisterUnitEvent(26170, 4, "Thassarian_OnDied")