--[[ The Barrens -- Razormane Seer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneSeer_HealingWard", 2000, 1)
Unit:RegisterEvent("RazormaneSeer_SearingTotem", 4000, 1)
end

function RazormaneSeer_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function RazormaneSeer_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function RazormaneSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3458, 1, "RazormaneSeer_OnCombat")
RegisterUnitEvent(3458, 2, "RazormaneSeer_OnLeaveCombat")
RegisterUnitEvent(3458, 3, "RazormaneSeer_OnKilledTarget")
RegisterUnitEvent(3458, 4, "RazormaneSeer_OnDied")