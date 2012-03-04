--[[ Desolace -- Drysnap Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DrysnapCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("DrysnapCrawler_FrostArmor", 4000, 1)
Unit:RegisterEvent("DrysnapCrawler_FrostShock", 9000, 0)
end

function DrysnapCrawler_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function DrysnapCrawler_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function DrysnapCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrysnapCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrysnapCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11562, 1, "DrysnapCrawler_OnCombat")
RegisterUnitEvent(11562, 2, "DrysnapCrawler_OnLeaveCombat")
RegisterUnitEvent(11562, 3, "DrysnapCrawler_OnKilledTarget")
RegisterUnitEvent(11562, 4, "DrysnapCrawler_OnDied")