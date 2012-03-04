--[[ Darkshore -- Stormscale Wave Rider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StormscaleWaveRider_OnCombat(Unit, Event)
Unit:RegisterEvent("StormscaleWaveRider_AquaJet", 8000, 0)
end

function StormscaleWaveRider_AquaJet(pUnit, Event) 
pUnit:CastSpell(13586) 
end

function StormscaleWaveRider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormscaleWaveRider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormscaleWaveRider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2179, 1, "StormscaleWaveRider_OnCombat")
RegisterUnitEvent(2179, 2, "StormscaleWaveRider_OnLeaveCombat")
RegisterUnitEvent(2179, 3, "StormscaleWaveRider_OnKilledTarget")
RegisterUnitEvent(2179, 4, "StormscaleWaveRider_OnDied")