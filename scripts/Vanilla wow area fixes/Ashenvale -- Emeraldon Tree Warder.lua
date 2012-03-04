--[[ Ashenvale -- Emeraldon Tree Warder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function EmeraldonTreeWarder_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonTreeWarder_FaerieFire", 2000, 2)
Unit:RegisterEvent("EmeraldonTreeWarder_EntanglingRoots", 8000, 0)
end

function EmeraldonTreeWarder_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20656, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20654, pUnit:GetMainTank()) 
end

function EmeraldonTreeWarder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonTreeWarder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonTreeWarder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12475, 1, "EmeraldonTreeWarder_OnCombat")
RegisterUnitEvent(12475, 2, "EmeraldonTreeWarder_OnLeaveCombat")
RegisterUnitEvent(12475, 3, "EmeraldonTreeWarder_OnKilledTarget")
RegisterUnitEvent(12475, 4, "EmeraldonTreeWarder_OnDied")