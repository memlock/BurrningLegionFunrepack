--[[ Grizzly Hills -- Graymist Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GraymistHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GraymistHunter_Gore", 10000, 0)
end

function GraymistHunter_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function GraymistHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GraymistHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GraymistHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26592, 1, "GraymistHunter_OnCombat")
RegisterUnitEvent(26592, 2, "GraymistHunter_OnLeaveCombat")
RegisterUnitEvent(26592, 3, "GraymistHunter_OnKilledTarget")
RegisterUnitEvent(26592, 4, "GraymistHunter_OnDied")