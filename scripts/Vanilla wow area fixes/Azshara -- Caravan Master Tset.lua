--[[ Azshara -- Caravan Master Tset.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function CaravanMasterTset_OnCombat(Unit, Event)
Unit:RegisterEvent("CaravanMasterTset_Frostbolt", 7000, 0)
end

function CaravanMasterTset_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function CaravanMasterTset_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaravanMasterTset_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaravanMasterTset_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8409, 1, "CaravanMasterTset_OnCombat")
RegisterUnitEvent(8409, 2, "CaravanMasterTset_OnLeaveCombat")
RegisterUnitEvent(8409, 3, "CaravanMasterTset_OnKilledTarget")
RegisterUnitEvent(8409, 4, "CaravanMasterTset_OnDied")