--[[ Mulgore -- The Rake.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function TheRake_OnCombat(Unit, Event)
Unit:RegisterEvent("TheRake_MuscleTear", 8000, 0)
end

function TheRake_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function TheRake_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheRake_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheRake_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5807, 1, "TheRake_OnCombat")
RegisterUnitEvent(5807, 2, "TheRake_OnLeaveCombat")
RegisterUnitEvent(5807, 3, "TheRake_OnKilledTarget")
RegisterUnitEvent(5807, 4, "TheRake_OnDied")