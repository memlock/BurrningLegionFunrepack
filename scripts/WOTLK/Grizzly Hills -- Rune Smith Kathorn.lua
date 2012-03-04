--[[ Grizzly Hills -- Rune Smith Kathorn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneSmithKathorn_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithKathorn_LightningCharged", 4000, 1)
end

function RuneSmithKathorn_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithKathorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithKathorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithKathorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26410, 1, "RuneSmithKathorn_OnCombat")
RegisterUnitEvent(26410, 2, "RuneSmithKathorn_OnLeaveCombat")
RegisterUnitEvent(26410, 3, "RuneSmithKathorn_OnKilledTarget")
RegisterUnitEvent(26410, 4, "RuneSmithKathorn_OnDied")