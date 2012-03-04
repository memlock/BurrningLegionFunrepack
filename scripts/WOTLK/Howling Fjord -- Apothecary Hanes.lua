--[[ Howling Fjord -- Apothecary Hanes.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function ApothecaryHanes_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryHanes_HealingPotion", 12000, 0)
end

function ApothecaryHanes_HealingPotion(pUnit, Event) 
pUnit:CastSpell(17534) 
end

function ApothecaryHanes_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryHanes_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryHanes_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23784, 1, "ApothecaryHanes_OnCombat")
RegisterUnitEvent(23784, 2, "ApothecaryHanes_OnLeaveCombat")
RegisterUnitEvent(23784, 3, "ApothecaryHanes_OnKilledTarget")
RegisterUnitEvent(23784, 4, "ApothecaryHanes_OnDied")