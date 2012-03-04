--[[ Dragonblight -- Angrathar Necrolord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AngratharNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharNecrolord_ShadowBolt", 7000, 0)
end

function AngratharNecrolord_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AngratharNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27603, 1, "AngratharNecrolord_OnCombat")
RegisterUnitEvent(27603, 2, "AngratharNecrolord_OnLeaveCombat")
RegisterUnitEvent(27603, 3, "AngratharNecrolord_OnKilledTarget")
RegisterUnitEvent(27603, 4, "AngratharNecrolord_OnDied")