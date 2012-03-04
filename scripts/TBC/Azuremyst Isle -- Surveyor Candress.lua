--[[ Azuremyst Isle -- Surveyor Candress.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SurveyorCandress_OnCombat(Unit, Event)
Unit:RegisterEvent("SurveyorCandress_Fireball", 8000, 0)
end

function SurveyorCandress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9487, pUnit:GetMainTank()) 
end

function SurveyorCandress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SurveyorCandress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SurveyorCandress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16522, 1, "SurveyorCandress_OnCombat")
RegisterUnitEvent(16522, 2, "SurveyorCandress_OnLeaveCombat")
RegisterUnitEvent(16522, 3, "SurveyorCandress_OnKilledTarget")
RegisterUnitEvent(16522, 4, "SurveyorCandress_OnDied")