--[[ The Barrens -- Baeldun Foreman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunForeman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunForeman_TorchToss", 8000, 0)
end

function BaeldunForeman_TorchToss(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6257, pUnit:GetMainTank()) 
end

function BaeldunForeman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunForeman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunForeman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3375, 1, "BaeldunForeman_OnCombat")
RegisterUnitEvent(3375, 2, "BaeldunForeman_OnLeaveCombat")
RegisterUnitEvent(3375, 3, "BaeldunForeman_OnKilledTarget")
RegisterUnitEvent(3375, 4, "BaeldunForeman_OnDied")