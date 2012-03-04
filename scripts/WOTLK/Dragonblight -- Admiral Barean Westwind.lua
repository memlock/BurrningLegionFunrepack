--[[ Dragonblight -- Admiral Barean Westwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AdmiralBareanWestwind_OnCombat(Unit, Event)
Unit:RegisterEvent("AdmiralBareanWestwind_ProtectionSphere", 15000, 0)
end

function AdmiralBareanWestwind_ProtectionSphere(pUnit, Event) 
pUnit:CastSpell(50161) 
end

function AdmiralBareanWestwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AdmiralBareanWestwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AdmiralBareanWestwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27951, 1, "AdmiralBareanWestwind_OnCombat")
RegisterUnitEvent(27951, 2, "AdmiralBareanWestwind_OnLeaveCombat")
RegisterUnitEvent(27951, 3, "AdmiralBareanWestwind_OnKilledTarget")
RegisterUnitEvent(27951, 4, "AdmiralBareanWestwind_OnDied")