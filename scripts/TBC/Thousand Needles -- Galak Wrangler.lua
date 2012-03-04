--[[ Thousand Needles -- Galak Wrangler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakWrangler_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakWrangler_Shot", 6000, 0)
Unit:RegisterEvent("GalakWrangler_Net", 8000, 0)
end

function GalakWrangler_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakWrangler_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function GalakWrangler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakWrangler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakWrangler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4093, 1, "GalakWrangler_OnCombat")
RegisterUnitEvent(4093, 2, "GalakWrangler_OnLeaveCombat")
RegisterUnitEvent(4093, 3, "GalakWrangler_OnKilledTarget")
RegisterUnitEvent(4093, 4, "GalakWrangler_OnDied")