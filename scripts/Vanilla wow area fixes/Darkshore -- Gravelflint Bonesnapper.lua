--[[ Darkshore -- Gravelflint Bonesnapper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GravelflintBonesnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelflintBonesnapper_HeadCrack", 8000, 0)
end

function GravelflintBonesnapper_HeadCrack(pUnit, Event) 
pUnit:CastSpell(3148, pUnit:GetMainTank()) 
end

function GravelflintBonesnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelflintBonesnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelflintBonesnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2159, 1, "GravelflintBonesnapper_OnCombat")
RegisterUnitEvent(2159, 2, "GravelflintBonesnapper_OnLeaveCombat")
RegisterUnitEvent(2159, 3, "GravelflintBonesnapper_OnKilledTarget")
RegisterUnitEvent(2159, 4, "GravelflintBonesnapper_OnDied")