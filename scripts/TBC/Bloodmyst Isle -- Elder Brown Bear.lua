--[[ Bloodmyst Isle -- Elder Brown Bear.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function ElderBrownBear_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderBrownBear_Swipe", 8000, 0)
end

function ElderBrownBear_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function ElderBrownBear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderBrownBear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderBrownBear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17348, 1, "ElderBrownBear_OnCombat")
RegisterUnitEvent(17348, 2, "ElderBrownBear_OnLeaveCombat")
RegisterUnitEvent(17348, 3, "ElderBrownBear_OnKilledTarget")
RegisterUnitEvent(17348, 4, "ElderBrownBear_OnDied")