--[[ Dragonblight -- Forgotten Captain.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenCaptain_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenCaptain_Stormhammer", 9000, 0)
end

function ForgottenCaptain_Stormhammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51591, pUnit:GetMainTank()) 
end

function ForgottenCaptain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenCaptain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenCaptain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27220, 1, "ForgottenCaptain_OnCombat")
RegisterUnitEvent(27220, 2, "ForgottenCaptain_OnLeaveCombat")
RegisterUnitEvent(27220, 3, "ForgottenCaptain_OnKilledTarget")
RegisterUnitEvent(27220, 4, "ForgottenCaptain_OnDied")