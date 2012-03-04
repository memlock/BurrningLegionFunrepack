--[[ Grizzly Hills -- Infected Grizzly Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function InfectedGrizzlyBear_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedGrizzlyBear_InfectedBite", 8000, 0)
end

function InfectedGrizzlyBear_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49861, pUnit:GetMainTank()) 
end

function InfectedGrizzlyBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedGrizzlyBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedGrizzlyBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26706, 1, "InfectedGrizzlyBear_OnCombat")
RegisterUnitEvent(26706, 2, "InfectedGrizzlyBear_OnLeaveCombat")
RegisterUnitEvent(26706, 3, "InfectedGrizzlyBear_OnKilledTarget")
RegisterUnitEvent(26706, 4, "InfectedGrizzlyBear_OnDied")