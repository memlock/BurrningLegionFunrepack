--[[ Grizzly Hills -- Grocklar.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Grocklar_OnCombat(Unit, Event)
Unit:RegisterEvent("Grocklar_StoneFist", 3000, 1)
Unit:RegisterEvent("Grocklar_StoneStomp", 8000, 0)
end

function Grocklar_StoneFist(pUnit, Event) 
pUnit:CastSpell(49676) 
end

function Grocklar_StoneStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49675, pUnit:GetMainTank()) 
end

function Grocklar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grocklar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grocklar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32422, 1, "Grocklar_OnCombat")
RegisterUnitEvent(32422, 2, "Grocklar_OnLeaveCombat")
RegisterUnitEvent(32422, 3, "Grocklar_OnKilledTarget")
RegisterUnitEvent(32422, 4, "Grocklar_OnDied")