--[[ Azuremyst Isle -- Siltfin Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SiltfinHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinHunter_Throw", 4000, 0)
end

function SiltfinHunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SiltfinHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17192, 1, "SiltfinHunter_OnCombat")
RegisterUnitEvent(17192, 2, "SiltfinHunter_OnLeaveCombat")
RegisterUnitEvent(17192, 3, "SiltfinHunter_OnKilledTarget")
RegisterUnitEvent(17192, 4, "SiltfinHunter_OnDied")