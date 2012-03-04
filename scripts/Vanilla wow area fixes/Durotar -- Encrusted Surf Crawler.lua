--[[ Durotar -- Encrusted Surf Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function EncrustedSurfCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("EncrustedSurfCrawler_QuickSidestep", 8000, 0)
end

function EncrustedSurfCrawler_QuickSidestep(pUnit, Event) 
pUnit:CastSpell(5426) 
end

function EncrustedSurfCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EncrustedSurfCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EncrustedSurfCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3108, 1, "EncrustedSurfCrawler_OnCombat")
RegisterUnitEvent(3108, 2, "EncrustedSurfCrawler_OnLeaveCombat")
RegisterUnitEvent(3108, 3, "EncrustedSurfCrawler_OnKilledTarget")
RegisterUnitEvent(3108, 4, "EncrustedSurfCrawler_OnDied")