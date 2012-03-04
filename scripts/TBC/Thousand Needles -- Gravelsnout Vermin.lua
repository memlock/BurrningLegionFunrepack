--[[ Thousand Needles -- Gravelsnout Vermin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutVermin_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutVermin_InfectedWound", 10000, 0)
end

function GravelsnoutVermin_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function GravelsnoutVermin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutVermin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutVermin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4112, 1, "GravelsnoutVermin_OnCombat")
RegisterUnitEvent(4112, 2, "GravelsnoutVermin_OnLeaveCombat")
RegisterUnitEvent(4112, 3, "GravelsnoutVermin_OnKilledTarget")
RegisterUnitEvent(4112, 4, "GravelsnoutVermin_OnDied")