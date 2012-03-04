--[[ Dragonblight -- Devout Bodyguard.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DevoutBodyguard_OnCombat(Unit, Event)
Unit:RegisterEvent("DevoutBodyguard_PiercingHowl", 8000, 0)
end

function DevoutBodyguard_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function DevoutBodyguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DevoutBodyguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DevoutBodyguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27247, 1, "DevoutBodyguard_OnCombat")
RegisterUnitEvent(27247, 2, "DevoutBodyguard_OnLeaveCombat")
RegisterUnitEvent(27247, 3, "DevoutBodyguard_OnKilledTarget")
RegisterUnitEvent(27247, 4, "DevoutBodyguard_OnDied")