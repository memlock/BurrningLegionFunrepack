--[[ Silithus -- Lapress.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Lapress_OnCombat(Unit, Event)
Unit:RegisterEvent("Lapress_Rend", 8000, 0)
end

function Lapress_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13455, pUnit:GetMainTank()) 
end

function Lapress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lapress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lapress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14473, 1, "Lapress_OnCombat")
RegisterUnitEvent(14473, 2, "Lapress_OnLeaveCombat")
RegisterUnitEvent(14473, 3, "Lapress_OnKilledTarget")
RegisterUnitEvent(14473, 4, "Lapress_OnDied")