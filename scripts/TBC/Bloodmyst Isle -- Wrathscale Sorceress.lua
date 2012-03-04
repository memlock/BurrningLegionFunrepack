--[[ Bloodmyst Isle -- Wrathscale Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSorceress_Frostbolt", 8000, 0)
end

function WrathscaleSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function WrathscaleSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17336, 1, "WrathscaleSorceress_OnCombat")
RegisterUnitEvent(17336, 2, "WrathscaleSorceress_OnLeaveCombat")
RegisterUnitEvent(17336, 3, "WrathscaleSorceress_OnKilledTarget")
RegisterUnitEvent(17336, 4, "WrathscaleSorceress_OnDied")