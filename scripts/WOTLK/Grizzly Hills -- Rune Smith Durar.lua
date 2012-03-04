--[[ Grizzly Hills -- Rune Smith Durar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RuneSmithDurar_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithDurar_LightningCharged", 4000, 1)
end

function RuneSmithDurar_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithDurar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithDurar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithDurar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26409, 1, "RuneSmithDurar_OnCombat")
RegisterUnitEvent(26409, 2, "RuneSmithDurar_OnLeaveCombat")
RegisterUnitEvent(26409, 3, "RuneSmithDurar_OnKilledTarget")
RegisterUnitEvent(26409, 4, "RuneSmithDurar_OnDied")