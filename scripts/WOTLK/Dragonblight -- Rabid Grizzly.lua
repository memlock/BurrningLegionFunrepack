--[[ Dragonblight -- Rabid Grizzly.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RabidGrizzly_OnCombat(Unit, Event)
Unit:RegisterEvent("RabidGrizzly_Rabies", 8000, 0)
end

function RabidGrizzly_Rabies(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51951, pUnit:GetMainTank()) 
end

function RabidGrizzly_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RabidGrizzly_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RabidGrizzly_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26643, 1, "RabidGrizzly_OnCombat")
RegisterUnitEvent(26643, 2, "RabidGrizzly_OnLeaveCombat")
RegisterUnitEvent(26643, 3, "RabidGrizzly_OnKilledTarget")
RegisterUnitEvent(26643, 4, "RabidGrizzly_OnDied")