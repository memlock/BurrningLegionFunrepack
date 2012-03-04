--[[ Azuremyst Isle -- Moongraze Buck.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function MoongrazeBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("MoongrazeBuck_Knockdown", 7000, 0)
end

function MoongrazeBuck_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31274, pUnit:GetMainTank()) 
end

function MoongrazeBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoongrazeBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoongrazeBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17201, 1, "MoongrazeBuck_OnCombat")
RegisterUnitEvent(17201, 2, "MoongrazeBuck_OnLeaveCombat")
RegisterUnitEvent(17201, 3, "MoongrazeBuck_OnKilledTarget")
RegisterUnitEvent(17201, 4, "MoongrazeBuck_OnDied")