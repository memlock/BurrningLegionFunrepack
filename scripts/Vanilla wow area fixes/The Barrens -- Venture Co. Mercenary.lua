--[[ The Barrens -- Venture Co. Mercenary.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function VentureCoMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoMercenary_Shoot", 6000, 0)
end

function VentureCoMercenary_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function VentureCoMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "VentureCoMercenary_OnCombat")
RegisterUnitEvent(3382, 2, "VentureCoMercenary_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "VentureCoMercenary_OnKilledTarget")
RegisterUnitEvent(3382, 4, "VentureCoMercenary_OnDied")