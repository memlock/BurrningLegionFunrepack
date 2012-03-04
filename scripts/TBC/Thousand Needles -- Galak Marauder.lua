--[[ Thousand Needles -- Galak Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMarauder_RushingCharge", 7000, 0)
end

function GalakMarauder_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GalakMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4099, 1, "GalakMarauder_OnCombat")
RegisterUnitEvent(4099, 2, "GalakMarauder_OnLeaveCombat")
RegisterUnitEvent(4099, 3, "GalakMarauder_OnKilledTarget")
RegisterUnitEvent(4099, 4, "GalakMarauder_OnDied")