--[[ Dragonblight -- Emerald Lasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmeraldLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldLasher_DreamLash", 7000, 0)
end

function EmeraldLasher_DreamLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51901, pUnit:GetMainTank()) 
end

function EmeraldLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27254, 1, "EmeraldLasher_OnCombat")
RegisterUnitEvent(27254, 2, "EmeraldLasher_OnLeaveCombat")
RegisterUnitEvent(27254, 3, "EmeraldLasher_OnKilledTarget")
RegisterUnitEvent(27254, 4, "EmeraldLasher_OnDied")