--[[ Dragonblight -- Anokra the Manipulator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnokratheManipulator_OnCombat(Unit, Event)
Unit:RegisterEvent("AnokratheManipulator_MindBlast", 6000, 0)
Unit:RegisterEvent("AnokratheManipulator_MindFlay", 8000, 0)
Unit:RegisterEvent("AnokratheManipulator_WaveringWill", 2000, 1)
end

function AnokratheManipulator_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13860, pUnit:GetMainTank()) 
end

function AnokratheManipulator_MindFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16568, pUnit:GetMainTank()) 
end

function AnokratheManipulator_WaveringWill(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51676, pUnit:GetMainTank()) 
end

function AnokratheManipulator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnokratheManipulator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnokratheManipulator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26769, 1, "AnokratheManipulator_OnCombat")
RegisterUnitEvent(26769, 2, "AnokratheManipulator_OnLeaveCombat")
RegisterUnitEvent(26769, 3, "AnokratheManipulator_OnKilledTarget")
RegisterUnitEvent(26769, 4, "AnokratheManipulator_OnDied")