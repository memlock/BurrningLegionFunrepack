--[[ Bloodmyst Isle -- Grizzled Brown Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function GrizzledBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("GrizzledBrownBear_Swipe", 8000, 0)
end

function GrizzledBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function GrizzledBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrizzledBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrizzledBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17347, 1, "GrizzledBrownBear_OnCombat")
RegisterUnitEvent(17347, 2, "GrizzledBrownBear_OnLeaveCombat")
RegisterUnitEvent(17347, 3, "GrizzledBrownBear_OnKilledTarget")
RegisterUnitEvent(17347, 4, "GrizzledBrownBear_OnDied")