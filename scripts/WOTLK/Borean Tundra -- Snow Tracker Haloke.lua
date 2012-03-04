--[[ Borean Tundra -- Snow Tracker Haloke.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SnowTrackerHaloke_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowTrackerHaloke_Shoot", 6000, 0)
end

function SnowTrackerHaloke_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SnowTrackerHaloke_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowTrackerHaloke_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowTrackerHaloke_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26768, 1, "SnowTrackerHaloke_OnCombat")
RegisterUnitEvent(26768, 2, "SnowTrackerHaloke_OnLeaveCombat")
RegisterUnitEvent(26768, 3, "SnowTrackerHaloke_OnKilledTarget")
RegisterUnitEvent(26768, 4, "SnowTrackerHaloke_OnDied")