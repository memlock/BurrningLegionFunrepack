--[[ Dragonblight -- Necrolord Amarion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NecrolordAmarion_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordAmarion_Decimate", 5500, 0)
end

function NecrolordAmarion_Decimate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51339, pUnit:GetMainTank()) 
end

function NecrolordAmarion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordAmarion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordAmarion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27508, 1, "NecrolordAmarion_OnCombat")
RegisterUnitEvent(27508, 2, "NecrolordAmarion_OnLeaveCombat")
RegisterUnitEvent(27508, 3, "NecrolordAmarion_OnKilledTarget")
RegisterUnitEvent(27508, 4, "NecrolordAmarion_OnDied")