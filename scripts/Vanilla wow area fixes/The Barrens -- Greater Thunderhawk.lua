--[[ The Barrens -- Greater Thunderhawk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function GreaterThunderhawk_OnCombat(Unit, Event)
Unit:RegisterEvent("GreaterThunderhawk_ThunderClap", 10000, 0)
end

function GreaterThunderhawk_ThunderClap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function GreaterThunderhawk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreaterThunderhawk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreaterThunderhawk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3249, 1, "GreaterThunderhawk_OnCombat")
RegisterUnitEvent(3249, 2, "GreaterThunderhawk_OnLeaveCombat")
RegisterUnitEvent(3249, 3, "GreaterThunderhawk_OnKilledTarget")
RegisterUnitEvent(3249, 4, "GreaterThunderhawk_OnDied")