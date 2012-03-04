--[[ The Barrens -- Razorfen Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazorfenBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazorfenBattleguard_Slam", 6000, 0)
end

function RazorfenBattleguard_Slam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11430, pUnit:GetMainTank()) 
end

function RazorfenBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazorfenBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazorfenBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7873, 1, "RazorfenBattleguard_OnCombat")
RegisterUnitEvent(7873, 2, "RazorfenBattleguard_OnLeaveCombat")
RegisterUnitEvent(7873, 3, "RazorfenBattleguard_OnKilledTarget")
RegisterUnitEvent(7873, 4, "RazorfenBattleguard_OnDied")