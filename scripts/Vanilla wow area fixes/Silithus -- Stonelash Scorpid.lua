--[[ Silithus -- Stonelash Scorpid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function StonelashScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("StonelashScorpid_VenomSting", 8000, 0)
end

function StonelashScorpid_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function StonelashScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StonelashScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StonelashScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11735, 1, "StonelashScorpid_OnCombat")
RegisterUnitEvent(11735, 2, "StonelashScorpid_OnLeaveCombat")
RegisterUnitEvent(11735, 3, "StonelashScorpid_OnKilledTarget")
RegisterUnitEvent(11735, 4, "StonelashScorpid_OnDied")