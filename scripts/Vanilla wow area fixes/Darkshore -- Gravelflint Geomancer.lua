--[[ Darkshore -- Gravelflint Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GravelflintGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelflintGeomancer_Fireball", 8000, 0)
Unit:RegisterEvent("GravelflintGeomancer_FrostArmor", 2000, 1)
end

function GravelflintGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function GravelflintGeomancer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function GravelflintGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelflintGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelflintGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2160, 1, "GravelflintGeomancer_OnCombat")
RegisterUnitEvent(2160, 2, "GravelflintGeomancer_OnLeaveCombat")
RegisterUnitEvent(2160, 3, "GravelflintGeomancer_OnKilledTarget")
RegisterUnitEvent(2160, 4, "GravelflintGeomancer_OnDied")