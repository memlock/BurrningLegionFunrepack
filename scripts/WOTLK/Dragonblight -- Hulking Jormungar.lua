--[[ Dragonblight -- Hulking Jormungar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HulkingJormungar_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingJormungar_CorrosivePoison", 4000, 1)
Unit:RegisterEvent("HulkingJormungar_CorrosiveSpit", 6000, 1)
end

function HulkingJormungar_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50293, pUnit:GetMainTank()) 
end

function HulkingJormungar_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47611, pUnit:GetMainTank()) 
end

function HulkingJormungar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingJormungar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingJormungar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26293, 1, "HulkingJormungar_OnCombat")
RegisterUnitEvent(26293, 2, "HulkingJormungar_OnLeaveCombat")
RegisterUnitEvent(26293, 3, "HulkingJormungar_OnKilledTarget")
RegisterUnitEvent(26293, 4, "HulkingJormungar_OnDied")