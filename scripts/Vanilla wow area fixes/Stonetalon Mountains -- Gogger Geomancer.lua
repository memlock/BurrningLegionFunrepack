--[[ Stonetalon Mountains -- Gogger Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GoggerGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("GoggerGeomancer_Fireball", 8000, 0)
Unit:RegisterEvent("GoggerGeomancer_RainofFire", 11000, 1)
end

function GoggerGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function GoggerGeomancer_RainofFire(pUnit, Event) 
pUnit:CastSpell(11990) 
end

function GoggerGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GoggerGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GoggerGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11917, 1, "GoggerGeomancer_OnCombat")
RegisterUnitEvent(11917, 2, "GoggerGeomancer_OnLeaveCombat")
RegisterUnitEvent(11917, 3, "GoggerGeomancer_OnKilledTarget")
RegisterUnitEvent(11917, 4, "GoggerGeomancer_OnDied")