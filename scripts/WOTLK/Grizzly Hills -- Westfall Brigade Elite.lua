--[[ Grizzly Hills -- Westfall Brigade Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeElite_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeElite_Hamstring", 10000, 0)
Unit:RegisterEvent("WestfallBrigadeElite_Strike", 8000, 0)
end

function WestfallBrigadeElite_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WestfallBrigadeElite_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WestfallBrigadeElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27549, 1, "WestfallBrigadeElite_OnCombat")
RegisterUnitEvent(27549, 2, "WestfallBrigadeElite_OnLeaveCombat")
RegisterUnitEvent(27549, 3, "WestfallBrigadeElite_OnKilledTarget")
RegisterUnitEvent(27549, 4, "WestfallBrigadeElite_OnDied")