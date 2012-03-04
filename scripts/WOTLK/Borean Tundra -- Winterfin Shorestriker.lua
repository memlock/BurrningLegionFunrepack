--[[ Borean Tundra -- Winterfin Shorestriker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinShorestriker_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinShorestriker_RushedAssault", 7000, 0)
end

function WinterfinShorestriker_RushedAssault(pUnit, Event) 
pUnit:CastSpell(50262) 
end

function WinterfinShorestriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinShorestriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinShorestriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25215, 1, "WinterfinShorestriker_OnCombat")
RegisterUnitEvent(25215, 2, "WinterfinShorestriker_OnLeaveCombat")
RegisterUnitEvent(25215, 3, "WinterfinShorestriker_OnKilledTarget")
RegisterUnitEvent(25215, 4, "WinterfinShorestriker_OnDied")