--[[ Dragonblight -- Sarendryana.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Sarendryana_OnCombat(Unit, Event)
Unit:RegisterEvent("Sarendryana_FrostShock", 6000, 0)
end

function Sarendryana_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function Sarendryana_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sarendryana_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sarendryana_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26837, 1, "Sarendryana_OnCombat")
RegisterUnitEvent(26837, 2, "Sarendryana_OnLeaveCombat")
RegisterUnitEvent(26837, 3, "Sarendryana_OnKilledTarget")
RegisterUnitEvent(26837, 4, "Sarendryana_OnDied")