--[[ Dragonblight -- Deathbringer Revenant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DeathbringerRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathbringerRevenant_Strangulate", 8000, 0)
end

function DeathbringerRevenant_Strangulate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51131, pUnit:GetMainTank()) 
end

function DeathbringerRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathbringerRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathbringerRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27382, 1, "DeathbringerRevenant_OnCombat")
RegisterUnitEvent(27382, 2, "DeathbringerRevenant_OnLeaveCombat")
RegisterUnitEvent(27382, 3, "DeathbringerRevenant_OnKilledTarget")
RegisterUnitEvent(27382, 4, "DeathbringerRevenant_OnDied")