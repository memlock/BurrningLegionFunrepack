--[[ Durotar -- KulTiras Sailor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function KulTirasSailor_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasSailor_RushingCharge", 8000, 0)
end

function KulTirasSailor_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function KulTirasSailor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasSailor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasSailor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3128, 1, "KulTirasSailor_OnCombat")
RegisterUnitEvent(3128, 2, "KulTirasSailor_OnLeaveCombat")
RegisterUnitEvent(3128, 3, "KulTirasSailor_OnKilledTarget")
RegisterUnitEvent(3128, 4, "KulTirasSailor_OnDied")