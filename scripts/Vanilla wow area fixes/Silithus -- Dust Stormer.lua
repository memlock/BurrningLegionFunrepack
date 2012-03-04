--[[ Silithus -- Dust Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function DustStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("DustStormer_LightningShield", 6000, 0)
Unit:RegisterEvent("DustStormer_LightningCloud", 10000, 0)
end

function DustStormer_LightningShield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function DustStormer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(19513) 
end

function DustStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11744, 1, "DustStormer_OnCombat")
RegisterUnitEvent(11744, 2, "DustStormer_OnLeaveCombat")
RegisterUnitEvent(11744, 3, "DustStormer_OnKilledTarget")
RegisterUnitEvent(11744, 4, "DustStormer_OnDied")