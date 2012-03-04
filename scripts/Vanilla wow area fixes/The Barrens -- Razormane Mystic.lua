--[[ The Barrens -- Razormane Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneMystic_HealingWave", 12000, 0)
Unit:RegisterEvent("RazormaneMystic_LightningShield", 3000, 0)
end

function RazormaneMystic_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function RazormaneMystic_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function RazormaneMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3271, 1, "RazormaneMystic_OnCombat")
RegisterUnitEvent(3271, 2, "RazormaneMystic_OnLeaveCombat")
RegisterUnitEvent(3271, 3, "RazormaneMystic_OnKilledTarget")
RegisterUnitEvent(3271, 4, "RazormaneMystic_OnDied")