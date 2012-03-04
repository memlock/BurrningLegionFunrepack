--[[ Ashenvale -- Dark Strand Adept.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function DarkStrandAdept_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandAdept_SummonVoidwalker", 1000, 1)
Unit:RegisterEvent("DarkStrandAdept_ShadowBolt", 8000, 0)
end

function DarkStrandAdept_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function DarkStrandAdept_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function DarkStrandAdept_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandAdept_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandAdept_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3728, 1, "DarkStrandAdept_OnCombat")
RegisterUnitEvent(3728, 2, "DarkStrandAdept_OnLeaveCombat")
RegisterUnitEvent(3728, 3, "DarkStrandAdept_OnKilledTarget")
RegisterUnitEvent(3728, 4, "DarkStrandAdept_OnDied")