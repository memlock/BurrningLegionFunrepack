--[[ Dragonblight -- Coldwind Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ColdwindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWitch_ColdwindBlast", 7000, 0)
end

function ColdwindWitch_ColdwindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51877, pUnit:GetMainTank()) 
end

function ColdwindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26577, 1, "ColdwindWitch_OnCombat")
RegisterUnitEvent(26577, 2, "ColdwindWitch_OnLeaveCombat")
RegisterUnitEvent(26577, 3, "ColdwindWitch_OnKilledTarget")
RegisterUnitEvent(26577, 4, "ColdwindWitch_OnDied")