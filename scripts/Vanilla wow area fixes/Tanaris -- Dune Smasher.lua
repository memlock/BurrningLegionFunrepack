--[[ Tanaris -- Dune Smasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DuneSmasher_OnCombat(Unit, Event)
Unit:RegisterEvent("DuneSmasher_HeadCrack", 10000, 0)
end

function DuneSmasher_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9791, pUnit:GetMainTank()) 
end

function DuneSmasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuneSmasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuneSmasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5469, 1, "DuneSmasher_OnCombat")
RegisterUnitEvent(5469, 2, "DuneSmasher_OnLeaveCombat")
RegisterUnitEvent(5469, 3, "DuneSmasher_OnKilledTarget")
RegisterUnitEvent(5469, 4, "DuneSmasher_OnDied")