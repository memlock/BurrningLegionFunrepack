--[[ Durotar -- Razormane Battleguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneBattleguard_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneBattleguard_ImprovedBlocking", 8000, 0)
end

function RazormaneBattleguard_ImprovedBlocking(pUnit, Event) 
pUnit:CastSpell(3248) 
end

function RazormaneBattleguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneBattleguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneBattleguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3114, 1, "RazormaneBattleguard_OnCombat")
RegisterUnitEvent(3114, 2, "RazormaneBattleguard_OnLeaveCombat")
RegisterUnitEvent(3114, 3, "RazormaneBattleguard_OnKilledTarget")
RegisterUnitEvent(3114, 4, "RazormaneBattleguard_OnDied")