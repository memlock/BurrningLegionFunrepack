--[[ Mulgore -- Wiry Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function WirySwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("WirySwoop_Swoop", 6000, 0)
end

function WirySwoop_WirySwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function WirySwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WirySwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WirySwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2969, 1, "WirySwoop_OnCombat")
RegisterUnitEvent(2969, 2, "WirySwoop_OnLeaveCombat")
RegisterUnitEvent(2969, 3, "WirySwoop_OnKilledTarget")
RegisterUnitEvent(2969, 4, "WirySwoop_OnDied")