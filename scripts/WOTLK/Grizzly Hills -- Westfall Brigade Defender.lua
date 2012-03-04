--[[ Grizzly Hills -- Westfall Brigade Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeDefender_Strike", 6000, 0)
end

function WestfallBrigadeDefender_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14516, pUnit:GetMainTank()) 
end

function WestfallBrigadeDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27758, 1, "WestfallBrigadeDefender_OnCombat")
RegisterUnitEvent(27758, 2, "WestfallBrigadeDefender_OnLeaveCombat")
RegisterUnitEvent(27758, 3, "WestfallBrigadeDefender_OnKilledTarget")
RegisterUnitEvent(27758, 4, "WestfallBrigadeDefender_OnDied")