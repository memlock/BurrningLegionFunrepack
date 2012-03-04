--[[ Ashenvale -- Wild Buck.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("WildBuck_RushingCharge", 8000, 0)
end

function WildBuck_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function WildBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3816, 1, "WildBuck_OnCombat")
RegisterUnitEvent(3816, 2, "WildBuck_OnLeaveCombat")
RegisterUnitEvent(3816, 3, "WildBuck_OnKilledTarget")
RegisterUnitEvent(3816, 4, "WildBuck_OnDied")