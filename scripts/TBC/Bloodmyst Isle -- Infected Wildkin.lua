--[[ Bloodmyst Isle -- Infected Wildkin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function InfectedWildkin_OnCombat(Unit, Event)
Unit:RegisterEvent("InfectedWildkin_InfectedWound", 10000, 0)
end

function InfectedWildkin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31282, pUnit:GetMainTank()) 
end

function InfectedWildkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfectedWildkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfectedWildkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17322, 1, "InfectedWildkin_OnCombat")
RegisterUnitEvent(17322, 2, "InfectedWildkin_OnLeaveCombat")
RegisterUnitEvent(17322, 3, "InfectedWildkin_OnKilledTarget")
RegisterUnitEvent(17322, 4, "InfectedWildkin_OnDied")