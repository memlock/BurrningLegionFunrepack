--[[ Durotar -- Venomtail Scorpid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function VenomtailScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomtailScorpid_VenomSting", 10000, 0)
end

function VenomtailScorpid_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function VenomtailScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomtailScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomtailScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3127, 1, "VenomtailScorpid_OnCombat")
RegisterUnitEvent(3127, 2, "VenomtailScorpid_OnLeaveCombat")
RegisterUnitEvent(3127, 3, "VenomtailScorpid_OnKilledTarget")
RegisterUnitEvent(3127, 4, "VenomtailScorpid_OnDied")