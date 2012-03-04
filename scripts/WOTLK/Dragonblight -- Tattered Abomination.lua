--[[ Dragonblight -- Tattered Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TatteredAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TatteredAbomination_ScourgeHook", 7000, 0)
end

function TatteredAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TatteredAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TatteredAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TatteredAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27797, 1, "TatteredAbomination_OnCombat")
RegisterUnitEvent(27797, 2, "TatteredAbomination_OnLeaveCombat")
RegisterUnitEvent(27797, 3, "TatteredAbomination_OnKilledTarget")
RegisterUnitEvent(27797, 4, "TatteredAbomination_OnDied")