--[[ Dragonblight -- Blighted Elk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BlightedElk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlightedElk_PlagueBlight", 8000, 0)
end

function BlightedElk_PlagueBlight(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43506, pUnit:GetMainTank()) 
end

function BlightedElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlightedElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlightedElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26616, 1, "BlightedElk_OnCombat")
RegisterUnitEvent(26616, 2, "BlightedElk_OnLeaveCombat")
RegisterUnitEvent(26616, 3, "BlightedElk_OnKilledTarget")
RegisterUnitEvent(26616, 4, "BlightedElk_OnDied")