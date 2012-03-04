--[[ Borean Tundra -- Loot Crazed Diver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LootCrazedDiver_OnCombat(Unit, Event)
Unit:RegisterEvent("LootCrazedDiver_Crazed", 5000, 1)
end

function LootCrazedDiver_Crazed(pUnit, Event) 
pUnit:CastSpell(5915) 
end

function LootCrazedDiver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LootCrazedDiver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LootCrazedDiver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25836, 1, "LootCrazedDiver_OnCombat")
RegisterUnitEvent(25836, 2, "LootCrazedDiver_OnLeaveCombat")
RegisterUnitEvent(25836, 3, "LootCrazedDiver_OnKilledTarget")
RegisterUnitEvent(25836, 4, "LootCrazedDiver_OnDied")