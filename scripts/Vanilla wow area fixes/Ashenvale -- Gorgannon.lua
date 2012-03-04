--[[ Ashenvale -- Gorgannon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Gorgannon_OnCombat(Unit, Event)
Unit:RegisterEvent("Gorgannon_Knockdown", 8000, 0)
Unit:RegisterEvent("Gorgannon_ShadowBolt", 10000, 0)
end

function Gorgannon_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function Gorgannon_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Gorgannon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gorgannon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gorgannon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17300, 1, "Gorgannon_OnCombat")
RegisterUnitEvent(17300, 2, "Gorgannon_OnLeaveCombat")
RegisterUnitEvent(17300, 3, "Gorgannon_OnKilledTarget")
RegisterUnitEvent(17300, 4, "Gorgannon_OnDied")