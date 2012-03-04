--[[ Dragonblight -- Wastes Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WastesScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesScavenger_BoneToss", 5000, 0)
end

function WastesScavenger_BoneToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50403, pUnit:GetMainTank()) 
end

function WastesScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28005, 1, "WastesScavenger_OnCombat")
RegisterUnitEvent(28005, 2, "WastesScavenger_OnLeaveCombat")
RegisterUnitEvent(28005, 3, "WastesScavenger_OnKilledTarget")
RegisterUnitEvent(28005, 4, "WastesScavenger_OnDied")