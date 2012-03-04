--[[ Dragonblight -- Ice Heart Jormungar Feeder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function IceHeartJormungarFeeder_OnCombat(Unit, Event)
Unit:RegisterEvent("IceHeartJormungarFeeder_CorrosiveSpit", 6000, 1)
end

function IceHeartJormungarFeeder_CorrosiveSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47447, pUnit:GetMainTank()) 
end

function IceHeartJormungarFeeder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceHeartJormungarFeeder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceHeartJormungarFeeder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26358, 1, "IceHeartJormungarFeeder_OnCombat")
RegisterUnitEvent(26358, 2, "IceHeartJormungarFeeder_OnLeaveCombat")
RegisterUnitEvent(26358, 3, "IceHeartJormungarFeeder_OnKilledTarget")
RegisterUnitEvent(26358, 4, "IceHeartJormungarFeeder_OnDied")