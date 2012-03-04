--[[ Grizzly Hills -- The Anvil.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function TheAnvi_OnCombat(Unit, Event)
Unit:RegisterEvent("TheAnvi_MoltenBlast", 8000, 0)
end

function TheAnvi_MoltenBlast(pUnit, Event) 
pUnit:CastSpell(61577) 
end

function TheAnvi_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheAnvi_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheAnvi_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26406, 1, "TheAnvi_OnCombat")
RegisterUnitEvent(26406, 2, "TheAnvi_OnLeaveCombat")
RegisterUnitEvent(26406, 3, "TheAnvi_OnKilledTarget")
RegisterUnitEvent(26406, 4, "TheAnvi_OnDied")