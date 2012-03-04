--[[ Dragonblight -- Fordragon Gryphon Rider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonGryphonRider_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonGryphonRider_Stormhammer", 9000, 0)
end

function FordragonGryphonRider_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49482, pUnit:GetMainTank()) 
end

function FordragonGryphonRider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonGryphonRider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonGryphonRider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27521, 1, "FordragonGryphonRider_OnCombat")
RegisterUnitEvent(27521, 2, "FordragonGryphonRider_OnLeaveCombat")
RegisterUnitEvent(27521, 3, "FordragonGryphonRider_OnKilledTarget")
RegisterUnitEvent(27521, 4, "FordragonGryphonRider_OnDied")