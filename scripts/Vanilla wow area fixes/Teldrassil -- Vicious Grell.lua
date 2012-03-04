--[[ Teldrassil -- Vicious Grell.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ViciousGrell_OnCombat(Unit, Event)
Unit:RegisterEvent("ViciousGrell_Savagery", 8000, 0)
end

function ViciousGrell_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function ViciousGrell_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ViciousGrell_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ViciousGrell_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2005, 1, "ViciousGrell_OnCombat")
RegisterUnitEvent(2005, 2, "ViciousGrell_OnLeaveCombat")
RegisterUnitEvent(2005, 3, "ViciousGrell_OnKilledTarget")
RegisterUnitEvent(2005, 4, "ViciousGrell_OnDied")