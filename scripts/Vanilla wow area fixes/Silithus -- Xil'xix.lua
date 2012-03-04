--[[ Silithus -- Xil'xix.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Xilxix_OnCombat(Unit, Event)
Unit:RegisterEvent("Xilxix_BerserkerCharge", 6000, 0)
end

function Xilxix_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Xilxix_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Xilxix_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Xilxix_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15286, 1, "Xilxix_OnCombat")
RegisterUnitEvent(15286, 2, "Xilxix_OnLeaveCombat")
RegisterUnitEvent(15286, 3, "Xilxix_OnKilledTarget")
RegisterUnitEvent(15286, 4, "Xilxix_OnDied")