--[[ Ashenvale -- Eckalom.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Eckalom_OnCombat(Unit, Event)
Unit:RegisterEvent("Eckalom_Freeze", 12000, 0)
Unit:RegisterEvent("Eckalom_FrostShock", 8000, 0)
end

function Eckalom_Freeze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5276, pUnit:GetMainTank()) 
end

function Eckalom_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21030, pUnit:GetMainTank()) 
end

function Eckalom_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Eckalom_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Eckalom_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10642, 1, "Eckalom_OnCombat")
RegisterUnitEvent(10642, 2, "Eckalom_OnLeaveCombat")
RegisterUnitEvent(10642, 3, "Eckalom_OnKilledTarget")
RegisterUnitEvent(10642, 4, "Eckalom_OnDied")