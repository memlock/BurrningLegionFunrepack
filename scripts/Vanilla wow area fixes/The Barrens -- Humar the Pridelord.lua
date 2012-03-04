--[[ The Barrens -- Humar the Pridelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HumarthePridelord_OnCombat(Unit, Event)
Unit:RegisterEvent("HumarthePridelord_AgonizingPain", 10000, 0)
end

function HumarthePridelord_AgonizingPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3247, pUnit:GetMainTank()) 
end

function HumarthePridelord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HumarthePridelord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HumarthePridelord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5828, 1, "HumarthePridelord_OnCombat")
RegisterUnitEvent(5828, 2, "HumarthePridelord_OnLeaveCombat")
RegisterUnitEvent(5828, 3, "HumarthePridelord_OnKilledTarget")
RegisterUnitEvent(5828, 4, "HumarthePridelord_OnDied")