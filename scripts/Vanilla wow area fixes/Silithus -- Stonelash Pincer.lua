--[[ Silithus -- Stonelash Pincer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function StonelashPincer_OnCombat(Unit, Event)
Unit:RegisterEvent("StonelashPincer_TendonRip", 6000, 0)
Unit:RegisterEvent("StonelashPincer_VenomSting", 8000, 0)
end

function StonelashPincer_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function StonelashPincer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function StonelashPincer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StonelashPincer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StonelashPincer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11736, 1, "StonelashPincer_OnCombat")
RegisterUnitEvent(11736, 2, "StonelashPincer_OnLeaveCombat")
RegisterUnitEvent(11736, 3, "StonelashPincer_OnKilledTarget")
RegisterUnitEvent(11736, 4, "StonelashPincer_OnDied")