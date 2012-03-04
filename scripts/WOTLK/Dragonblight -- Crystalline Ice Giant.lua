--[[ Dragonblight -- Crystalline Ice Giant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CrystallineIceGiant_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystallineIceGiant_IceStalagmite", 8000, 0)
Unit:RegisterEvent("CrystallineIceGiant_IceBoulder", 5500, 0)
end

function CrystallineIceGiant_IceStalagmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50597, pUnit:GetMainTank()) 
end

function CrystallineIceGiant_IceBoulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50588, pUnit:GetMainTank()) 
end

function CrystallineIceGiant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystallineIceGiant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystallineIceGiant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26291, 1, "CrystallineIceGiant_OnCombat")
RegisterUnitEvent(26291, 2, "CrystallineIceGiant_OnLeaveCombat")
RegisterUnitEvent(26291, 3, "CrystallineIceGiant_OnKilledTarget")
RegisterUnitEvent(26291, 4, "CrystallineIceGiant_OnDied")