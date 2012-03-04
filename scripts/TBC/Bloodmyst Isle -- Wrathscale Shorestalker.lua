--[[ Bloodmyst Isle -- Wrathscale Shorestalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function WrathscaleShorestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleShorestalker_Strike", 6000, 0)
end

function WrathscaleShorestalker_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleShorestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleShorestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleShorestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17331, 1, "WrathscaleShorestalker_OnCombat")
RegisterUnitEvent(17331, 2, "WrathscaleShorestalker_OnLeaveCombat")
RegisterUnitEvent(17331, 3, "WrathscaleShorestalker_OnKilledTarget")
RegisterUnitEvent(17331, 4, "WrathscaleShorestalker_OnDied")