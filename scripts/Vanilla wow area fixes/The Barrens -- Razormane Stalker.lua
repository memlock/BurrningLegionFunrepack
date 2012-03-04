--[[ The Barrens -- Razormane Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneStalker_SinesterStrike", 3000, 0)
end

function RazormaneStalker_SinesterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1758, pUnit:GetMainTank()) 
end

function RazormaneStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3457, 1, "RazormaneStalker_OnCombat")
RegisterUnitEvent(3457, 2, "RazormaneStalker_OnLeaveCombat")
RegisterUnitEvent(3457, 3, "RazormaneStalker_OnKilledTarget")
RegisterUnitEvent(3457, 4, "RazormaneStalker_OnDied")