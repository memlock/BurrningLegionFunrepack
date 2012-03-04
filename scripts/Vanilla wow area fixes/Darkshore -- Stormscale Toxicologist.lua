--[[ Darkshore -- Stormscale Toxicologist.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StormscaleToxicologist_OnCombat(Unit, Event)
Unit:RegisterEvent("StormscaleToxicologist_HolySmite", 8000, 0)
end

function StormscaleToxicologist_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function StormscaleToxicologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormscaleToxicologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormscaleToxicologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12321, 1, "StormscaleToxicologist_OnCombat")
RegisterUnitEvent(12321, 2, "StormscaleToxicologist_OnLeaveCombat")
RegisterUnitEvent(12321, 3, "StormscaleToxicologist_OnKilledTarget")
RegisterUnitEvent(12321, 4, "StormscaleToxicologist_OnDied")