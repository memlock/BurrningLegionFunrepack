--[[ Mulgore -- Prairie Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PrairieWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("PrairieWolf_ThreateningGrowl", 10000, 2)
end

function PrairieWolf_ThreateningGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5781, pUnit:GetMainTank()) 
end

function PrairieWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PrairieWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PrairieWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2958, 1, "PrairieWolf_OnCombat")
RegisterUnitEvent(2958, 2, "PrairieWolf_OnLeaveCombat")
RegisterUnitEvent(2958, 3, "PrairieWolf_OnKilledTarget")
RegisterUnitEvent(2958, 4, "PrairieWolf_OnDied")