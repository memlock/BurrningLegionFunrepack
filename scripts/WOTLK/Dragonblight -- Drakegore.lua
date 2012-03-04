--[[ Dragonblight -- Drakegore.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Drakegore_OnCombat(Unit, Event)
Unit:RegisterEvent("Drakegore_BurningFists", 2000, 1)
Unit:RegisterEvent("Drakegore_MagnataurCharge", 6000, 0)
end

function Drakegore_BurningFists(pUnit, Event) 
pUnit:CastSpell(52101) 
end

function Drakegore_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52088, pUnit:GetMainTank()) 
end

function Drakegore_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drakegore_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drakegore_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27009, 1, "Drakegore_OnCombat")
RegisterUnitEvent(27009, 2, "Drakegore_OnLeaveCombat")
RegisterUnitEvent(27009, 3, "Drakegore_OnKilledTarget")
RegisterUnitEvent(27009, 4, "Drakegore_OnDied")