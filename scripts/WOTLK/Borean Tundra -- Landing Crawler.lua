--[[ Borean Tundra -- Landing Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LandingCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("LandingCrawler_ClawGrasp", 10000, 0)
end

function LandingCrawler_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49978, pUnit:GetMainTank()) 
end

function LandingCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandingCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandingCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25481, 1, "LandingCrawler_OnCombat")
RegisterUnitEvent(25481, 2, "LandingCrawler_OnLeaveCombat")
RegisterUnitEvent(25481, 3, "LandingCrawler_OnKilledTarget")
RegisterUnitEvent(25481, 4, "LandingCrawler_OnDied")