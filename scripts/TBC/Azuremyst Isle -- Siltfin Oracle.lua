--[[ Azuremyst Isle -- Siltfin Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SiltfinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinOracle_LightningShield", 5000, 0)
Unit:RegisterEvent("SiltfinOracle_Wrath", 8000, 0)
end

function SiltfinOracle_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SiltfinOracle_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SiltfinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17191, 1, "SiltfinOracle_OnCombat")
RegisterUnitEvent(17191, 2, "SiltfinOracle_OnLeaveCombat")
RegisterUnitEvent(17191, 3, "SiltfinOracle_OnKilledTarget")
RegisterUnitEvent(17191, 4, "SiltfinOracle_OnDied")