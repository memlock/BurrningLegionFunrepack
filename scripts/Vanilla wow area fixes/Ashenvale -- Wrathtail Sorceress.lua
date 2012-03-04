--[[ Ashenvale -- Wrathtail Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSorceress_Frostbolt", 7000, 0)
end

function WrathtailSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function WrathtailSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3717, 1, "WrathtailSorceress_OnCombat")
RegisterUnitEvent(3717, 2, "WrathtailSorceress_OnLeaveCombat")
RegisterUnitEvent(3717, 3, "WrathtailSorceress_OnKilledTarget")
RegisterUnitEvent(3717, 4, "WrathtailSorceress_OnDied")