--[[ The Barrens -- Razormane Geomancer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneGeomancer_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneGeomancer_Fireball", 8000, 0)
Unit:RegisterEvent("RazormaneGeomancer_FrostArmor", 1000, 1)
end

function RazormaneGeomancer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function RazormaneGeomancer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function RazormaneGeomancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneGeomancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneGeomancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3269, 1, "RazormaneGeomancer_OnCombat")
RegisterUnitEvent(3269, 2, "RazormaneGeomancer_OnLeaveCombat")
RegisterUnitEvent(3269, 3, "RazormaneGeomancer_OnKilledTarget")
RegisterUnitEvent(3269, 4, "RazormaneGeomancer_OnDied")