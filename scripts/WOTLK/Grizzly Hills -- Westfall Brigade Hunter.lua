--[[ Grizzly Hills -- Westfall Brigade Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WestfallBrigadeHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeHunter_AimedShot", 7000, 0)
end

function WestfallBrigadeHunter_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38861, pUnit:GetMainTank()) 
end

function WestfallBrigadeHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27462, 1, "WestfallBrigadeHunter_OnCombat")
RegisterUnitEvent(27462, 2, "WestfallBrigadeHunter_OnLeaveCombat")
RegisterUnitEvent(27462, 3, "WestfallBrigadeHunter_OnKilledTarget")
RegisterUnitEvent(27462, 4, "WestfallBrigadeHunter_OnDied")