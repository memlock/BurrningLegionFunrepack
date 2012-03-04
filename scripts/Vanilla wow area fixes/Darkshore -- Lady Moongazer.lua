--[[ Darkshore -- Lady Moongazer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function LadyMoongazer_OnCombat(Unit, Event)
Unit:RegisterEvent("LadyMoongazer_Net", 10000, 0)
Unit:RegisterEvent("LadyMoongazer_Shoot", 6000, 0)
end

function LadyMoongazer_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function LadyMoongazer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function LadyMoongazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadyMoongazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadyMoongazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2184, 1, "LadyMoongazer_OnCombat")
RegisterUnitEvent(2184, 2, "LadyMoongazer_OnLeaveCombat")
RegisterUnitEvent(2184, 3, "LadyMoongazer_OnKilledTarget")
RegisterUnitEvent(2184, 4, "LadyMoongazer_OnDied")