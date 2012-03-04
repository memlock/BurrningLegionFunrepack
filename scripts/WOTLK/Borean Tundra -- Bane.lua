--[[ Borean Tundra -- Bane.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Bane_OnCombat(Unit, Event)
Unit:RegisterEvent("Bane_FoolsBane", 10000, 0)
end

function Bane_FoolsBane(pUnit, Event) 
pUnit:CastSpell(50332) 
end

function Bane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25655, 1, "Bane_OnCombat")
RegisterUnitEvent(25655, 2, "Bane_OnLeaveCombat")
RegisterUnitEvent(25655, 3, "Bane_OnKilledTarget")
RegisterUnitEvent(25655, 4, "Bane_OnDied")