--[[ Thousand Needles -- Galak Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakScout_Shot", 6000, 0)
end

function GalakScout_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4094, 1, "GalakScout_OnCombat")
RegisterUnitEvent(4094, 2, "GalakScout_OnLeaveCombat")
RegisterUnitEvent(4094, 3, "GalakScout_OnKilledTarget")
RegisterUnitEvent(4094, 4, "GalakScout_OnDied")