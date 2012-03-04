--[[ Azshara -- Lady Sesspira.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LadySesspira_OnCombat(Unit, Event)
Unit:RegisterEvent("LadySesspira_ForkedLightning", 8000, 0)
Unit:RegisterEvent("LadySesspira_Shoot", 6000, 0)
end

function LadySesspira_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(20299) 
end

function LadySesspira_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function LadySesspira_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadySesspira_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadySesspira_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6649, 1, "LadySesspira_OnCombat")
RegisterUnitEvent(6649, 2, "LadySesspira_OnLeaveCombat")
RegisterUnitEvent(6649, 3, "LadySesspira_OnKilledTarget")
RegisterUnitEvent(6649, 4, "LadySesspira_OnDied")