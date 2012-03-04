--[[ Dragonblight -- Infinite Timerendertwo.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteTimerender_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteTimerender_TimeLapse", 7000, 0)
end

function InfiniteTimerender_TimeLapse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51020, pUnit:GetMainTank()) 
end

function InfiniteTimerender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteTimerender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteTimerender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27900, 1, "InfiniteTimerender_OnCombat")
RegisterUnitEvent(27900, 2, "InfiniteTimerender_OnLeaveCombat")
RegisterUnitEvent(27900, 3, "InfiniteTimerender_OnKilledTarget")
RegisterUnitEvent(27900, 4, "InfiniteTimerender_OnDied")