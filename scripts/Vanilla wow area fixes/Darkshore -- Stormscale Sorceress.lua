--[[ Darkshore -- Stormscale Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function StormscaleSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("StormscaleSorceress_FrostArmor", 2000, 1)
Unit:RegisterEvent("StormscaleSorceress_Frostbolt", 8000, 0)
end

function StormscaleSorceress_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function StormscaleSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function StormscaleSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormscaleSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormscaleSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2182, 1, "StormscaleSorceress_OnCombat")
RegisterUnitEvent(2182, 2, "StormscaleSorceress_OnLeaveCombat")
RegisterUnitEvent(2182, 3, "StormscaleSorceress_OnKilledTarget")
RegisterUnitEvent(2182, 4, "StormscaleSorceress_OnDied")