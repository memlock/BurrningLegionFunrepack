--[[ Durotar -- Razormane Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function RazormaneScout_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneScout_Shoot", 6000, 0)
end

function RazormaneScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormaneScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3112, 1, "RazormaneScout_OnCombat")
RegisterUnitEvent(3112, 2, "RazormaneScout_OnLeaveCombat")
RegisterUnitEvent(3112, 3, "RazormaneScout_OnKilledTarget")
RegisterUnitEvent(3112, 4, "RazormaneScout_OnDied")