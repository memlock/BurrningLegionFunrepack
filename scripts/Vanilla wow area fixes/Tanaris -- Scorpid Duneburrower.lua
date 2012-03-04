--[[ Tanaris -- Scorpid Duneburrower.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ScorpidDuneburrower_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDuneburrower_VenomSting", 10000, 0)
end

function ScorpidDuneburrower_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDuneburrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDuneburrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDuneburrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7803, 1, "ScorpidDuneburrower_OnCombat")
RegisterUnitEvent(7803, 2, "ScorpidDuneburrower_OnLeaveCombat")
RegisterUnitEvent(7803, 3, "ScorpidDuneburrower_OnKilledTarget")
RegisterUnitEvent(7803, 4, "ScorpidDuneburrower_OnDied")