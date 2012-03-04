--[[ Darknassus -- Huntress Leafrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function HuntressLeafrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressLeafrunner_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressLeafrunner_SunderArmor", 8000, 0)
end

function HuntressLeafrunner_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressLeafrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressLeafrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14380, 1, "HuntressLeafrunner_OnCombat")
RegisterUnitEvent(14380, 2, "HuntressLeafrunner_OnLeaveCombat")
RegisterUnitEvent(14380, 3, "HuntressLeafrunner_OnKilledTarget")
RegisterUnitEvent(14380, 4, "HuntressLeafrunner_OnDied")