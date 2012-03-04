--[[ Thousand Needles -- Vile Sting.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function VileSting_OnCombat(Unit, Event)
Unit:RegisterEvent("VileSting_VenomSting", 10000, 0)
end

function VileSting_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8257, pUnit:GetMainTank()) 
end

function VileSting_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileSting_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileSting_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5937, 1, "VileSting_OnCombat")
RegisterUnitEvent(5937, 2, "VileSting_OnLeaveCombat")
RegisterUnitEvent(5937, 3, "VileSting_OnKilledTarget")
RegisterUnitEvent(5937, 4, "VileSting_OnDied")