--[[ Grizzly Hills -- Conquest Hold Berserker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldBerserker_BattleShout", 4000, 1)
end

function ConquestHoldBerserker_BattleShout(pUnit, Event) 
pUnit:CastSpell(31403) 
end

function ConquestHoldBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27500, 1, "ConquestHoldBerserker_OnCombat")
RegisterUnitEvent(27500, 2, "ConquestHoldBerserker_OnLeaveCombat")
RegisterUnitEvent(27500, 3, "ConquestHoldBerserker_OnKilledTarget")
RegisterUnitEvent(27500, 4, "ConquestHoldBerserker_OnDied")