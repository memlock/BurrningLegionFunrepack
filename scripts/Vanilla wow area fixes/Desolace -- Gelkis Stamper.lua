--[[ Desolace -- Gelkis Stamper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisStamper_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisStamper_Trample", 6000, 0)
end

function GelkisStamper_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function GelkisStamper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisStamper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisStamper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4648, 1, "GelkisStamper_OnCombat")
RegisterUnitEvent(4648, 2, "GelkisStamper_OnLeaveCombat")
RegisterUnitEvent(4648, 3, "GelkisStamper_OnKilledTarget")
RegisterUnitEvent(4648, 4, "GelkisStamper_OnDied")