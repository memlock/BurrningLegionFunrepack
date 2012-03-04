--[[ Thousand Needles -- Highperch Wyvern.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchWyvern_Poison", 12000, 0)
end

function HighperchWyvern_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4107, 1, "HighperchWyvern_OnCombat")
RegisterUnitEvent(4107, 2, "HighperchWyvern_OnLeaveCombat")
RegisterUnitEvent(4107, 3, "HighperchWyvern_OnKilledTarget")
RegisterUnitEvent(4107, 4, "HighperchWyvern_OnDied")