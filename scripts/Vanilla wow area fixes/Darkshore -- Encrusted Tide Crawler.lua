--[[ Darkshore -- Encrusted Tide Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function EncrustedTideCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EncrustedTideCrawler_InfectedWound", 5000, 1)
end

function EncrustedTideCrawler_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function EncrustedTideCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EncrustedTideCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EncrustedTideCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2233, 1, "EncrustedTideCrawler_OnCombat")
RegisterUnitEvent(2233, 2, "EncrustedTideCrawler_OnLeaveCombat")
RegisterUnitEvent(2233, 3, "EncrustedTideCrawler_OnKilledTarget")
RegisterUnitEvent(2233, 4, "EncrustedTideCrawler_OnDied")