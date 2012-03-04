--[[ Darkshore -- Greymist Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GreymistHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GreymistHunter_Throw", 6000, 0)
end

function GreymistHunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function GreymistHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreymistHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreymistHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2206, 1, "GreymistHunter_OnCombat")
RegisterUnitEvent(2206, 2, "GreymistHunter_OnLeaveCombat")
RegisterUnitEvent(2206, 3, "GreymistHunter_OnKilledTarget")
RegisterUnitEvent(2206, 4, "GreymistHunter_OnDied")