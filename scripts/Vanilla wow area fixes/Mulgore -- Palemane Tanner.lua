--[[ Mulgore -- Palemane Tanner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PalemaneTanner_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemaneTanner_Wrath", 10000, 0)
end

function PalemaneTanner_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function PalemaneTanner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemaneTanner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemaneTanner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2949, 1, "PalemaneTanner_OnCombat")
RegisterUnitEvent(2949, 2, "PalemaneTanner_OnLeaveCombat")
RegisterUnitEvent(2949, 3, "PalemaneTanner_OnKilledTarget")
RegisterUnitEvent(2949, 4, "PalemaneTanner_OnDied")