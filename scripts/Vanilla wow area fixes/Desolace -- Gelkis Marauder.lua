--[[ Desolace -- Gelkis Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMarauder_BerserkerStance", 3000, 1)
Unit:RegisterEvent("GelkisMarauder_Cleave", 8000, 0)
end

function GelkisMarauder_BerserkerStance(pUnit, Event) 
pUnit:CastSpell(7366) 
end

function GelkisMarauder_Cleave(pUnit, Event) 
pUnit:CastSpell(845) 
end

function GelkisMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4653, 1, "GelkisMarauder_OnCombat")
RegisterUnitEvent(4653, 2, "GelkisMarauder_OnLeaveCombat")
RegisterUnitEvent(4653, 3, "GelkisMarauder_OnKilledTarget")
RegisterUnitEvent(4653, 4, "GelkisMarauder_OnDied")