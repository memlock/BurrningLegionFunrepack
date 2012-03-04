--[[ Dragonblight -- Crystalline Ice Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CrystallineIceElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystallineIceElemental_IceSlash", 6000, 0)
end

function CrystallineIceElemental_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function CrystallineIceElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystallineIceElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystallineIceElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26316, 1, "CrystallineIceElemental_OnCombat")
RegisterUnitEvent(26316, 2, "CrystallineIceElemental_OnLeaveCombat")
RegisterUnitEvent(26316, 3, "CrystallineIceElemental_OnKilledTarget")
RegisterUnitEvent(26316, 4, "CrystallineIceElemental_OnDied")