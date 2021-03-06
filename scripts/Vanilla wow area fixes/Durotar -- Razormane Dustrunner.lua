--[[ Durotar -- Razormane Dustrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneDustrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneDustrunner_FaerieFire", 2000, 2)
Unit:RegisterEvent("RazormaneDustrunner_Rejuvenation", 12000, 0)
end

function RazormaneDustrunner_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RazormaneDustrunner_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function RazormaneDustrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneDustrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneDustrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3113, 1, "RazormaneDustrunner_OnCombat")
RegisterUnitEvent(3113, 2, "RazormaneDustrunner_OnLeaveCombat")
RegisterUnitEvent(3113, 3, "RazormaneDustrunner_OnKilledTarget")
RegisterUnitEvent(3113, 4, "RazormaneDustrunner_OnDied")