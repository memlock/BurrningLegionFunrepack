--[[ Dragonblight -- Forgotten Footman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenFootman_ShieldBlock", 5000, 0)
end

function ForgottenFootman_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(32587) 
end

function ForgottenFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27229, 1, "ForgottenFootman_OnCombat")
RegisterUnitEvent(27229, 2, "ForgottenFootman_OnLeaveCombat")
RegisterUnitEvent(27229, 3, "ForgottenFootman_OnKilledTarget")
RegisterUnitEvent(27229, 4, "ForgottenFootman_OnDied")