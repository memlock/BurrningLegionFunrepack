--[[ Dragonblight -- Indule Mystic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InduleMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleMystic_MysticalBolt", 6000, 0)
end

function InduleMystic_MysticalBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51787, pUnit:GetMainTank()) 
end

function InduleMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26336, 1, "InduleMystic_OnCombat")
RegisterUnitEvent(26336, 2, "InduleMystic_OnLeaveCombat")
RegisterUnitEvent(26336, 3, "InduleMystic_OnKilledTarget")
RegisterUnitEvent(26336, 4, "InduleMystic_OnDied")