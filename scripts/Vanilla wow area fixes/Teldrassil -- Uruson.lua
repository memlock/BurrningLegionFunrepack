--[[ Teldrassil -- Uruson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Uruson_OnCombat(Unit, Event)
Unit:RegisterEvent("Uruson_DemoralizingRoar", 10000, 0)
end

function Uruson_DemoralizingRoar(pUnit, Event) 
pUnit:CastSpell(15971) 
end

function Uruson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Uruson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Uruson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14428, 1, "Uruson_OnCombat")
RegisterUnitEvent(14428, 2, "Uruson_OnLeaveCombat")
RegisterUnitEvent(14428, 3, "Uruson_OnKilledTarget")
RegisterUnitEvent(14428, 4, "Uruson_OnDied")