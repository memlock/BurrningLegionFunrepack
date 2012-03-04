--[[ Dragonblight -- Wastes Digger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WastesDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesDigger_CarnivorousBite", 4000, 0)
end

function WastesDigger_CarnivorousBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30639, pUnit:GetMainTank()) 
end

function WastesDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26492, 1, "WastesDigger_OnCombat")
RegisterUnitEvent(26492, 2, "WastesDigger_OnLeaveCombat")
RegisterUnitEvent(26492, 3, "WastesDigger_OnKilledTarget")
RegisterUnitEvent(26492, 4, "WastesDigger_OnDied")