--[[ Dragonblight -- Enraged Apparition.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EnragedApparition_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedApparition_Enrage", 10000, 1)
end

function EnragedApparition_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function EnragedApparition_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedApparition_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedApparition_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27551, 1, "EnragedApparition_OnCombat")
RegisterUnitEvent(27551, 2, "EnragedApparition_OnLeaveCombat")
RegisterUnitEvent(27551, 3, "EnragedApparition_OnKilledTarget")
RegisterUnitEvent(27551, 4, "EnragedApparition_OnDied")