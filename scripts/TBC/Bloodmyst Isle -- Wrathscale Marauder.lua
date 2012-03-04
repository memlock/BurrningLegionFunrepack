--[[ Bloodmyst Isle -- Wrathscale Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMarauder_Pummel", 8000, 0)
end

function WrathscaleMarauder_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WrathscaleMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17334, 1, "WrathscaleMarauder_OnCombat")
RegisterUnitEvent(17334, 2, "WrathscaleMarauder_OnLeaveCombat")
RegisterUnitEvent(17334, 3, "WrathscaleMarauder_OnKilledTarget")
RegisterUnitEvent(17334, 4, "WrathscaleMarauder_OnDied")