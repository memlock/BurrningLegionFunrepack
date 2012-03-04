--[[ Durotar -- Corrupted Surf Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedSurfCrawler_DecayedStrength", 10000, 0)
end

function CorruptedSurfCrawler_DecayedStrength(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6951, pUnit:GetMainTank()) 
end

function CorruptedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3228, 1, "CorruptedSurfCrawler_OnCombat")
RegisterUnitEvent(3228, 2, "CorruptedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3228, 3, "CorruptedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3228, 4, "CorruptedSurfCrawler_OnDied")