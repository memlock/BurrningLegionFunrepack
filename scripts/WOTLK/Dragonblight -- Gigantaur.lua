--[[ Dragonblight -- Gigantaur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function Gigantaur_OnCombat(Unit, Event)
Unit:RegisterEvent("Gigantaur_GiganticBlow", 6000, 0)
Unit:RegisterEvent("Gigantaur_Hamstring", 8000, 0)
end

function Gigantaur_GiganticBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52139, pUnit:GetMainTank()) 
end

function Gigantaur_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function Gigantaur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gigantaur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gigantaur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26836, 1, "Gigantaur_OnCombat")
RegisterUnitEvent(26836, 2, "Gigantaur_OnLeaveCombat")
RegisterUnitEvent(26836, 3, "Gigantaur_OnKilledTarget")
RegisterUnitEvent(26836, 4, "Gigantaur_OnDied")