--[[ Silithus -- Aluntir.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Aluntir_OnCombat(Unit, Event)
Unit:RegisterEvent("Aluntir_BerserkerCharge", 6000, 0)
end

function Aluntir_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Aluntir_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Aluntir_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Aluntir_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15288, 1, "Aluntir_OnCombat")
RegisterUnitEvent(15288, 2, "Aluntir_OnLeaveCombat")
RegisterUnitEvent(15288, 3, "Aluntir_OnKilledTarget")
RegisterUnitEvent(15288, 4, "Aluntir_OnDied")