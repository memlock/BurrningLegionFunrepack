--[[ Darkshore -- Den Mother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DenMother_OnCombat(Unit, Event)
Unit:RegisterEvent("DenMother_Ravage", 9000, 0)
end

function DenMother_Ravage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3242, pUnit:GetMainTank()) 
end

function DenMother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DenMother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DenMother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6788, 1, "DenMother_OnCombat")
RegisterUnitEvent(6788, 2, "DenMother_OnLeaveCombat")
RegisterUnitEvent(6788, 3, "DenMother_OnKilledTarget")
RegisterUnitEvent(6788, 4, "DenMother_OnDied")