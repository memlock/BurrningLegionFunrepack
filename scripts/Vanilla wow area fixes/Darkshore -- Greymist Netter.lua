--[[ Darkshore -- Greymist Netter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GreymistNetter_OnCombat(Unit, Event)
Unit:RegisterEvent("GreymistNetter_Net", 10000, 0)
end

function GreymistNetter_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function GreymistNetter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreymistNetter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreymistNetter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2204, 1, "GreymistNetter_OnCombat")
RegisterUnitEvent(2204, 2, "GreymistNetter_OnLeaveCombat")
RegisterUnitEvent(2204, 3, "GreymistNetter_OnKilledTarget")
RegisterUnitEvent(2204, 4, "GreymistNetter_OnDied")