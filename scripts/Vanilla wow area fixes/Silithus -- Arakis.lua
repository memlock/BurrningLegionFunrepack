--[[ Silithus -- Arakis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Arakis_OnCombat(Unit, Event)
Unit:RegisterEvent("Arakis_BerserkerCharge", 6000, 0)
end

function Arakis_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Arakis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arakis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arakis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15290, 1, "Arakis_OnCombat")
RegisterUnitEvent(15290, 2, "Arakis_OnLeaveCombat")
RegisterUnitEvent(15290, 3, "Arakis_OnKilledTarget")
RegisterUnitEvent(15290, 4, "Arakis_OnDied")