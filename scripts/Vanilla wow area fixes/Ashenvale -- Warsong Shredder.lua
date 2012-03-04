--[[ Ashenvale -- Warsong Shredder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WarsongShredder_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShredder_Overdrive", 10000, 0)
end

function WarsongShredder_Overdrive(pUnit, Event) 
pUnit:CastSpell(18546) 
end

function WarsongShredder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShredder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShredder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11684, 1, "WarsongShredder_OnCombat")
RegisterUnitEvent(11684, 2, "WarsongShredder_OnLeaveCombat")
RegisterUnitEvent(11684, 3, "WarsongShredder_OnKilledTarget")
RegisterUnitEvent(11684, 4, "WarsongShredder_OnDied")