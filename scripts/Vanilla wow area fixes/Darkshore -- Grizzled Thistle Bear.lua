--[[ Darkshore -- Grizzled Thistle Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function GrizzledThistleBear_OnCombat(Unit, Event)
Unit:RegisterEvent("GrizzledThistleBear_Ravage", 8000, 0)
end

function GrizzledThistleBear_Ravage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3242, pUnit:GetMainTank()) 
end

function GrizzledThistleBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrizzledThistleBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrizzledThistleBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2165, 1, "GrizzledThistleBear_OnCombat")
RegisterUnitEvent(2165, 2, "GrizzledThistleBear_OnLeaveCombat")
RegisterUnitEvent(2165, 3, "GrizzledThistleBear_OnKilledTarget")
RegisterUnitEvent(2165, 4, "GrizzledThistleBear_OnDied")