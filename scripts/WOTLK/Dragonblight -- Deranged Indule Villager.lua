--[[ Dragonblight -- Deranged Indule Villager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DerangedInduleVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DerangedInduleVillager_DerangedTantrum", 7000, 0)
end

function DerangedInduleVillager_DerangedTantrum(pUnit, Event) 
pUnit:CastSpell(51782) 
end

function DerangedInduleVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DerangedInduleVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DerangedInduleVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26411, 1, "DerangedInduleVillager_OnCombat")
RegisterUnitEvent(26411, 2, "DerangedInduleVillager_OnLeaveCombat")
RegisterUnitEvent(26411, 3, "DerangedInduleVillager_OnKilledTarget")
RegisterUnitEvent(26411, 4, "DerangedInduleVillager_OnDied")