--[[ Grizzly Hills -- Conquest Hold Legionnaire.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldLegionnaire_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldLegionnaire_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldLegionnaire_Hamstring", 10000, 0)
end

function ConquestHoldLegionnaire_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(61044) 
end

function ConquestHoldLegionnaire_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ConquestHoldLegionnaire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldLegionnaire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldLegionnaire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26839, 1, "ConquestHoldLegionnaire_OnCombat")
RegisterUnitEvent(26839, 2, "ConquestHoldLegionnaire_OnLeaveCombat")
RegisterUnitEvent(26839, 3, "ConquestHoldLegionnaire_OnKilledTarget")
RegisterUnitEvent(26839, 4, "ConquestHoldLegionnaire_OnDied")