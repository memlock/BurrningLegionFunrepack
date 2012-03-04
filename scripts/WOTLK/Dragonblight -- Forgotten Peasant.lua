--[[ Dragonblight -- Forgotten Peasant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenPeasant_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenPeasant_Bonk", 6000, 0)
end

function ForgottenPeasant_Bonk(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51601, pUnit:GetMainTank()) 
end

function ForgottenPeasant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenPeasant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenPeasant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27226, 1, "ForgottenPeasant_OnCombat")
RegisterUnitEvent(27226, 2, "ForgottenPeasant_OnLeaveCombat")
RegisterUnitEvent(27226, 3, "ForgottenPeasant_OnKilledTarget")
RegisterUnitEvent(27226, 4, "ForgottenPeasant_OnDied")