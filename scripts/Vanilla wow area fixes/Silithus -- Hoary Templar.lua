--[[ Silithus -- Hoary Templar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function HoaryTemplar_OnCombat(Unit, Event)
Unit:RegisterEvent("HoaryTemplar_LightningShield", 6000, 0)
end

function HoaryTemplar_LightningShield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function HoaryTemplar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HoaryTemplar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HoaryTemplar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15212, 1, "HoaryTemplar_OnCombat")
RegisterUnitEvent(15212, 2, "HoaryTemplar_OnLeaveCombat")
RegisterUnitEvent(15212, 3, "HoaryTemplar_OnKilledTarget")
RegisterUnitEvent(15212, 4, "HoaryTemplar_OnDied")