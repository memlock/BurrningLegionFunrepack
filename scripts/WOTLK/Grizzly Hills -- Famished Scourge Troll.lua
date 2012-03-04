--[[ Grizzly Hills -- Famished Scourge Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FamishedScourgeTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("FamishedScourgeTroll_Suicide", 30000, 1)
end

function FamishedScourgeTroll_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function FamishedScourgeTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FamishedScourgeTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FamishedScourgeTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26570, 1, "FamishedScourgeTroll_OnCombat")
RegisterUnitEvent(26570, 2, "FamishedScourgeTroll_OnLeaveCombat")
RegisterUnitEvent(26570, 3, "FamishedScourgeTroll_OnKilledTarget")
RegisterUnitEvent(26570, 4, "FamishedScourgeTroll_OnDied")