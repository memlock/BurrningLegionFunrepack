--[[ Thousand Needles -- Highperch Consort.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HighperchConsort_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchConsort_Poison", 12000, 0)
end

function HighperchConsort_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchConsort_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchConsort_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchConsort_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4109, 1, "HighperchConsort_OnCombat")
RegisterUnitEvent(4109, 2, "HighperchConsort_OnLeaveCombat")
RegisterUnitEvent(4109, 3, "HighperchConsort_OnKilledTarget")
RegisterUnitEvent(4109, 4, "HighperchConsort_OnDied")