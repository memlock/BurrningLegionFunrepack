--[[ The Barrens -- Thunderhawk Cloudscraper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function ThunderhawkCloudscraper_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderhawkCloudscraper_ThunderClap", 10000, 0)
end

function ThunderhawkCloudscraper_ThunderClap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function ThunderhawkCloudscraper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderhawkCloudscraper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderhawkCloudscraper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3424, 1, "ThunderhawkCloudscraper_OnCombat")
RegisterUnitEvent(3424, 2, "ThunderhawkCloudscraper_OnLeaveCombat")
RegisterUnitEvent(3424, 3, "ThunderhawkCloudscraper_OnKilledTarget")
RegisterUnitEvent(3424, 4, "ThunderhawkCloudscraper_OnDied")