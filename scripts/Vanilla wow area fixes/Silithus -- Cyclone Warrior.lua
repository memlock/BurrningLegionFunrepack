--[[ Silithus -- Cyclone Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function CycloneWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("CycloneWarrior_Shock", 6000, 0)
end

function CycloneWarrior_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function CycloneWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CycloneWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CycloneWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11745, 1, "CycloneWarrior_OnCombat")
RegisterUnitEvent(11745, 2, "CycloneWarrior_OnLeaveCombat")
RegisterUnitEvent(11745, 3, "CycloneWarrior_OnKilledTarget")
RegisterUnitEvent(11745, 4, "CycloneWarrior_OnDied")