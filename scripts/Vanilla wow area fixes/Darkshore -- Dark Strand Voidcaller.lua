--[[ Darkshore -- Dark Strand Voidcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DarkStrandVoidcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkStrandVoidcaller_ShadowBolt", 8000, 0)
Unit:RegisterEvent("DarkStrandVoidcaller_SummonVoidwalker", 2000, 1)
end

function DarkStrandVoidcaller_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20807, pUnit:GetMainTank()) 
end

function DarkStrandVoidcaller_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function DarkStrandVoidcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkStrandVoidcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkStrandVoidcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2337, 1, "DarkStrandVoidcaller_OnCombat")
RegisterUnitEvent(2337, 2, "DarkStrandVoidcaller_OnLeaveCombat")
RegisterUnitEvent(2337, 3, "DarkStrandVoidcaller_OnKilledTarget")
RegisterUnitEvent(2337, 4, "DarkStrandVoidcaller_OnDied")