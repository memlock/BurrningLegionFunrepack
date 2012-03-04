--[[ Dragonblight -- Forgotten Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenKnight_Throw", 5000, 0)
end

function ForgottenKnight_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function ForgottenKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27224, 1, "ForgottenKnight_OnCombat")
RegisterUnitEvent(27224, 2, "ForgottenKnight_OnLeaveCombat")
RegisterUnitEvent(27224, 3, "ForgottenKnight_OnKilledTarget")
RegisterUnitEvent(27224, 4, "ForgottenKnight_OnDied")