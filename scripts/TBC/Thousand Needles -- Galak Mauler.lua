--[[ Thousand Needles -- Galak Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMauler_DemoralizingShout", 10000, 0)
end

function GalakMauler_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4095, 1, "GalakMauler_OnCombat")
RegisterUnitEvent(4095, 2, "GalakMauler_OnLeaveCombat")
RegisterUnitEvent(4095, 3, "GalakMauler_OnKilledTarget")
RegisterUnitEvent(4095, 4, "GalakMauler_OnDied")