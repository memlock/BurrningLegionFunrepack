--[[ Dragonblight -- Scourge Siegesmith.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ScourgeSiegesmith_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeSiegesmith_Bomb", 5500, 0)
end

function ScourgeSiegesmith_Bomb(pUnit, Event) 
pUnit:CastSpell(22334) 
end

function ScourgeSiegesmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeSiegesmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeSiegesmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27410, 1, "ScourgeSiegesmith_OnCombat")
RegisterUnitEvent(27410, 2, "ScourgeSiegesmith_OnLeaveCombat")
RegisterUnitEvent(27410, 3, "ScourgeSiegesmith_OnKilledTarget")
RegisterUnitEvent(27410, 4, "ScourgeSiegesmith_OnDied")