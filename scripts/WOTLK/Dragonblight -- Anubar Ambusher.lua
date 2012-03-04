--[[ Dragonblight -- Anubar Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarAmbusher_Rush", 6000, 0)
end

function AnubarAmbusher_Rush(pUnit, Event) 
pUnit:CastSpell(50347) 
end

function AnubarAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26402, 1, "AnubarAmbusher_OnCombat")
RegisterUnitEvent(26402, 2, "AnubarAmbusher_OnLeaveCombat")
RegisterUnitEvent(26402, 3, "AnubarAmbusher_OnKilledTarget")
RegisterUnitEvent(26402, 4, "AnubarAmbusher_OnDied")