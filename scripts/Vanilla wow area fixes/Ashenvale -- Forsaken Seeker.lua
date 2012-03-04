--[[ Ashenvale -- Forsaken Seeker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ForsakenSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("ForsakenSeeker_Heal", 12000, 0)
Unit:RegisterEvent("ForsakenSeeker_HolySmite", 7000, 0)
end

function ForsakenSeeker_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function ForsakenSeeker_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function ForsakenSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForsakenSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForsakenSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3732, 1, "ForsakenSeeker_OnCombat")
RegisterUnitEvent(3732, 2, "ForsakenSeeker_OnLeaveCombat")
RegisterUnitEvent(3732, 3, "ForsakenSeeker_OnKilledTarget")
RegisterUnitEvent(3732, 4, "ForsakenSeeker_OnDied")