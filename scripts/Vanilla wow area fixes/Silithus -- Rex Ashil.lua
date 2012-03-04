--[[ Silithus -- Rex Ashil.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function RexAshil_OnCombat(Unit, Event)
Unit:RegisterEvent("RexAshil_PierceArmor", 8000, 0)
end

function RexAshil_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function RexAshil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RexAshil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RexAshil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14475, 1, "RexAshil_OnCombat")
RegisterUnitEvent(14475, 2, "RexAshil_OnLeaveCombat")
RegisterUnitEvent(14475, 3, "RexAshil_OnKilledTarget")
RegisterUnitEvent(14475, 4, "RexAshil_OnDied")