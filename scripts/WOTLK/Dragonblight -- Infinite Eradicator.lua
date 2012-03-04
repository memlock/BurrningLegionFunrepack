--[[ Dragonblight -- Infinite Eradicator.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteEradicator_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteEradicator_Hasten", 2000, 1)
Unit:RegisterEvent("InfiniteEradicator_TemporalVortex", 6000, 0)
Unit:RegisterEvent("InfiniteEradicator_WingBuffet", 8000, 0)
end

function InfiniteEradicator_Hasten(pUnit, Event) 
pUnit:CastSpell(31458) 
end

function InfiniteEradicator_TemporalVortex(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52657, pUnit:GetMainTank()) 
end

function InfiniteEradicator_WingBuffet(pUnit, Event) 
pUnit:CastSpell(31475) 
end

function InfiniteEradicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteEradicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteEradicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32185, 1, "InfiniteEradicator_OnCombat")
RegisterUnitEvent(32185, 2, "InfiniteEradicator_OnLeaveCombat")
RegisterUnitEvent(32185, 3, "InfiniteEradicator_OnKilledTarget")
RegisterUnitEvent(32185, 4, "InfiniteEradicator_OnDied")