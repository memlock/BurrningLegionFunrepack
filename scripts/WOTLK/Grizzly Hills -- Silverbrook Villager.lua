--[[ Grizzly Hills -- Silverbrook Villager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function SilverbrookVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookVillager_Chop", 5000, 0)
end

function SilverbrookVillager_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function SilverbrookVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26708, 1, "SilverbrookVillager_OnCombat")
RegisterUnitEvent(26708, 2, "SilverbrookVillager_OnLeaveCombat")
RegisterUnitEvent(26708, 3, "SilverbrookVillager_OnKilledTarget")
RegisterUnitEvent(26708, 4, "SilverbrookVillager_OnDied")