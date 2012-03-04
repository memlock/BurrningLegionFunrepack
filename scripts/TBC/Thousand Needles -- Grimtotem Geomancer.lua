--[[ Thousand Needles -- Grimtotem Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemGeomancer_Slow", 15000, 0)
Unit:RegisterEvent("GrimtotemGeomancer_Flamestrike", 10000, 0)
Unit:RegisterEvent("GrimtotemGeomancer_Fireball", 5000, 0)
end

function GrimtotemGeomancer_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function GrimtotemGeomancer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(20813) 
end

function GrimtotemGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20811, pUnit:GetMainTank()) 
end

function GrimtotemGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10760, 1, "GrimtotemGeomancer_OnCombat")
RegisterUnitEvent(10760, 2, "GrimtotemGeomancer_OnLeaveCombat")
RegisterUnitEvent(10760, 3, "GrimtotemGeomancer_OnKilledTarget")
RegisterUnitEvent(10760, 4, "GrimtotemGeomancer_OnDied")