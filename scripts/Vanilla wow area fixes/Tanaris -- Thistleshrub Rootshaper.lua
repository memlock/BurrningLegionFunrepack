--[[ Tanaris -- Thistleshrub Rootshaper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ThistleshrubRootshaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleshrubRootshaper_EarthgrabTotem", 10000, 1)
end

function ThistleshrubRootshaper_EarthgrabTotem(pUnit, Event) 
pUnit:CastSpell(8376) 
end

function ThistleshrubRootshaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleshrubRootshaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleshrubRootshaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5485, 1, "ThistleshrubRootshaper_OnCombat")
RegisterUnitEvent(5485, 2, "ThistleshrubRootshaper_OnLeaveCombat")
RegisterUnitEvent(5485, 3, "ThistleshrubRootshaper_OnKilledTarget")
RegisterUnitEvent(5485, 4, "ThistleshrubRootshaper_OnDied")