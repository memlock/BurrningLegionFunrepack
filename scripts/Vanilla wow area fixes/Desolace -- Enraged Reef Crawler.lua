--[[ Desolace -- Enraged Reef Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function EnragedReefCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EnragedReefCrawler_Enrage", 10000, 1)
end

function EnragedReefCrawler_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function EnragedReefCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnragedReefCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnragedReefCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12347, 1, "EnragedReefCrawler_OnCombat")
RegisterUnitEvent(12347, 2, "EnragedReefCrawler_OnLeaveCombat")
RegisterUnitEvent(12347, 3, "EnragedReefCrawler_OnKilledTarget")
RegisterUnitEvent(12347, 4, "EnragedReefCrawler_OnDied")