--[[ Dragonblight -- Roanauk Icemist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RoanaukIcemist_OnCombat(Unit, Event)
Unit:RegisterEvent("RoanaukIcemist_GloryoftheAncestors", 5000, 1)
Unit:RegisterEvent("RoanaukIcemist_IcemistsBlessing", 10000, 0)
end

function RoanaukIcemist_GloryoftheAncestors(pUnit, Event) 
pUnit:CastSpell(47378) 
end

function RoanaukIcemist_IcemistsBlessing(pUnit, Event) 
pUnit:CastSpell(47379) 
end

function RoanaukIcemist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoanaukIcemist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoanaukIcemist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26654, 1, "RoanaukIcemist_OnCombat")
RegisterUnitEvent(26654, 2, "RoanaukIcemist_OnLeaveCombat")
RegisterUnitEvent(26654, 3, "RoanaukIcemist_OnKilledTarget")
RegisterUnitEvent(26654, 4, "RoanaukIcemist_OnDied")