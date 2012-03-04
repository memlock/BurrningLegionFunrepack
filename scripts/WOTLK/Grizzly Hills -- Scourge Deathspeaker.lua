--[[ Grizzly Hills -- Scourge Deathspeaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ScourgeDeathspeaker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeDeathspeaker_Fireball", 6000, 0)
Unit:RegisterEvent("ScourgeDeathspeaker_FlameoftheSeer", 3000, 1)
end

function ScourgeDeathspeaker_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52282, pUnit:GetMainTank()) 
end

function ScourgeDeathspeaker_FlameoftheSeer(pUnit, Event) 
pUnit:CastSpell(52281) 
end

function ScourgeDeathspeaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeDeathspeaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeDeathspeaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27615, 1, "ScourgeDeathspeaker_OnCombat")
RegisterUnitEvent(27615, 2, "ScourgeDeathspeaker_OnLeaveCombat")
RegisterUnitEvent(27615, 3, "ScourgeDeathspeaker_OnKilledTarget")
RegisterUnitEvent(27615, 4, "ScourgeDeathspeaker_OnDied")