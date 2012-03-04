--[[ Dragonblight -- Ice Heart Jormungar Spawn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceHeartJormungarSpawn_OnCombat(Unit, Event)
Unit:RegisterEvent("IceHeartJormungarSpawn_GutRip", 5000, 3)
end

function IceHeartJormungarSpawn_GutRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43358, pUnit:GetMainTank()) 
end

function IceHeartJormungarSpawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceHeartJormungarSpawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceHeartJormungarSpawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26359, 1, "IceHeartJormungarSpawn_OnCombat")
RegisterUnitEvent(26359, 2, "IceHeartJormungarSpawn_OnLeaveCombat")
RegisterUnitEvent(26359, 3, "IceHeartJormungarSpawn_OnKilledTarget")
RegisterUnitEvent(26359, 4, "IceHeartJormungarSpawn_OnDied")