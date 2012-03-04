--[[ Thousand Needles -- Galak Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakStormer_LightningBolt", 8000, 0)
end

function GalakStormer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GalakStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4097, 1, "GalakStormer_OnCombat")
RegisterUnitEvent(4097, 2, "GalakStormer_OnLeaveCombat")
RegisterUnitEvent(4097, 3, "GalakStormer_OnKilledTarget")
RegisterUnitEvent(4097, 4, "GalakStormer_OnDied")