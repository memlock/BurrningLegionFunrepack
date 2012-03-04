--[[ Dragonblight -- Fordragon Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonKnight_RallyingCry", 2000, 1)
end

function FordragonKnight_RallyingCry(pUnit, Event) 
pUnit:CastSpell(31732) 
end

function FordragonKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FordragonKnight_OnCombat")
RegisterUnitEvent(27531, 2, "FordragonKnight_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FordragonKnight_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FordragonKnight_OnDied")