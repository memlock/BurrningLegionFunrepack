--[[ Dalaran -- Warp Huntress Kula.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function WarpHuntressKula_OnCombat(Unit, Event)
Unit:RegisterEvent("WarpHuntressKula_ShootGun", 6000, 0)
end

function WarpHuntressKula_ShootGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61353, pUnit:GetMainTank()) 
end

function WarpHuntressKula_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarpHuntressKula_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarpHuntressKula_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32711, 1, "WarpHuntressKula_OnCombat")
RegisterUnitEvent(32711, 2, "WarpHuntressKula_OnLeaveCombat")
RegisterUnitEvent(32711, 3, "WarpHuntressKula_OnKilledTarget")
RegisterUnitEvent(32711, 4, "WarpHuntressKula_OnDied")