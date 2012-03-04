--[[ Thousand Needles -- Galak Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakAssassin_Net", 10000, 0)
end

function GalakAssassin_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GalakAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10720, 1, "GalakAssassin_OnCombat")
RegisterUnitEvent(10720, 2, "GalakAssassin_OnLeaveCombat")
RegisterUnitEvent(10720, 3, "GalakAssassin_OnKilledTarget")
RegisterUnitEvent(10720, 4, "GalakAssassin_OnDied")