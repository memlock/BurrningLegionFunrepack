--[[ Dalaran -- Garl Grimgrizzle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function GarlGrimgrizzle_OnCombat(Unit, Event)
Unit:RegisterEvent("GarlGrimgrizzle_ShootGun", 6000, 0)
end

function GarlGrimgrizzle_ShootGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61353, pUnit:GetMainTank()) 
end

function GarlGrimgrizzle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GarlGrimgrizzle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GarlGrimgrizzle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32710, 1, "GarlGrimgrizzle_OnCombat")
RegisterUnitEvent(32710, 2, "GarlGrimgrizzle_OnLeaveCombat")
RegisterUnitEvent(32710, 3, "GarlGrimgrizzle_OnKilledTarget")
RegisterUnitEvent(32710, 4, "GarlGrimgrizzle_OnDied")