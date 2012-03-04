--[[ Tanaris -- Scorpid Dunestalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidDunestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDunestalker_VenomSting", 10000, 0)
end

function ScorpidDunestalker_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDunestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDunestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDunestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5424, 1, "ScorpidDunestalker_OnCombat")
RegisterUnitEvent(5424, 2, "ScorpidDunestalker_OnLeaveCombat")
RegisterUnitEvent(5424, 3, "ScorpidDunestalker_OnKilledTarget")
RegisterUnitEvent(5424, 4, "ScorpidDunestalker_OnDied")