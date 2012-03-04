--[[ Grizzly Hills -- Iron Rune Overseer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function IronRuneOverseer_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneOverseer_CallLightning", 6000, 0)
end

function IronRuneOverseer_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronRuneOverseer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneOverseer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneOverseer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27177, 1, "IronRuneOverseer_OnCombat")
RegisterUnitEvent(27177, 2, "IronRuneOverseer_OnLeaveCombat")
RegisterUnitEvent(27177, 3, "IronRuneOverseer_OnKilledTarget")
RegisterUnitEvent(27177, 4, "IronRuneOverseer_OnDied")