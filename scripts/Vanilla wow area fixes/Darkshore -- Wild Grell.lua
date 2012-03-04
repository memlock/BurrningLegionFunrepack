--[[ Darkshore -- Wild Grell.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function WildGrell_OnCombat(Unit, Event)
Unit:RegisterEvent("WildGrell_Crazed", 10000, 1)
end

function WildGrell_Crazed(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5915, pUnit:GetMainTank()) 
end

function WildGrell_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildGrell_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildGrell_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2190, 1, "WildGrell_OnCombat")
RegisterUnitEvent(2190, 2, "WildGrell_OnLeaveCombat")
RegisterUnitEvent(2190, 3, "WildGrell_OnKilledTarget")
RegisterUnitEvent(2190, 4, "WildGrell_OnDied")