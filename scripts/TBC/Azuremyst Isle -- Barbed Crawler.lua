--[[ Azuremyst Isle -- Barbed Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BarbedCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("BarbedCrawler_Thorns", 2000, 2)
end

function BarbedCrawler_Thorns(pUnit, Event) 
pUnit:CastSpell(31271) 
end

function BarbedCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarbedCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarbedCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17217, 1, "BarbedCrawler_OnCombat")
RegisterUnitEvent(17217, 2, "BarbedCrawler_OnLeaveCombat")
RegisterUnitEvent(17217, 3, "BarbedCrawler_OnKilledTarget")
RegisterUnitEvent(17217, 4, "BarbedCrawler_OnDied")