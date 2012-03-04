--[[ Mulgore -- Bristleback Interloper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BristlebackInterloper_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackInterloper_MuscleTear", 10000, 0)
end

function BristlebackInterloper_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function BristlebackInterloper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackInterloper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackInterloper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3232, 1, "BristlebackInterloper_OnCombat")
RegisterUnitEvent(3232, 2, "BristlebackInterloper_OnLeaveCombat")
RegisterUnitEvent(3232, 3, "BristlebackInterloper_OnKilledTarget")
RegisterUnitEvent(3232, 4, "BristlebackInterloper_OnDied")