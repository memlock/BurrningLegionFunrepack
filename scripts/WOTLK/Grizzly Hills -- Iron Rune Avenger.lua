--[[ Grizzly Hills -- Iron Rune Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneAvenger_RuneofRetribution", 3000, 1)
end

function IronRuneAvenger_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function IronRuneAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26786, 1, "IronRuneAvenger_OnCombat")
RegisterUnitEvent(26786, 2, "IronRuneAvenger_OnLeaveCombat")
RegisterUnitEvent(26786, 3, "IronRuneAvenger_OnKilledTarget")
RegisterUnitEvent(26786, 4, "IronRuneAvenger_OnDied")