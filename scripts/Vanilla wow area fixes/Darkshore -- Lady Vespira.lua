--[[ Darkshore -- Lady Vespira.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function LadyVespira_OnCombat(Unit, Event)
Unit:RegisterEvent("LadyVespira_ForkedLightning", 10000, 0)
Unit:RegisterEvent("LadyVespira_Knockdown", 9000, 0)
Unit:RegisterEvent("LadyVespira_Shoot", 6000, 0)
end

function LadyVespira_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(12549) 
end

function LadyVespira_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function LadyVespira_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function LadyVespira_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadyVespira_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadyVespira_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7016, 1, "LadyVespira_OnCombat")
RegisterUnitEvent(7016, 2, "LadyVespira_OnLeaveCombat")
RegisterUnitEvent(7016, 3, "LadyVespira_OnKilledTarget")
RegisterUnitEvent(7016, 4, "LadyVespira_OnDied")