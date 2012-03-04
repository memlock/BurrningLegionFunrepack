--[[ Tanaris -- Wastewander Thief.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderThief_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderThief_Disarm", 10000, 0)
end

function WastewanderThief_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function WastewanderThief_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderThief_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderThief_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5616, 1, "WastewanderThief_OnCombat")
RegisterUnitEvent(5616, 2, "WastewanderThief_OnLeaveCombat")
RegisterUnitEvent(5616, 3, "WastewanderThief_OnKilledTarget")
RegisterUnitEvent(5616, 4, "WastewanderThief_OnDied")