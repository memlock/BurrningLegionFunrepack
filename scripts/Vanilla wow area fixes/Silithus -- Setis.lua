--[[ Silithus -- Setis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Setis_OnCombat(Unit, Event)
Unit:RegisterEvent("Setis_CrowdPummel", 8000, 0)
Unit:RegisterEvent("Setis_WarStomp", 10000, 0)
end

function Setis_CrowdPummel(pUnit, Event) 
pUnit:CastSpell(10887) 
end

function Setis_WarStomp(pUnit, Event) 
pUnit:CastSpell(16727) 
end

function Setis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Setis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Setis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14471, 1, "Setis_OnCombat")
RegisterUnitEvent(14471, 2, "Setis_OnLeaveCombat")
RegisterUnitEvent(14471, 3, "Setis_OnKilledTarget")
RegisterUnitEvent(14471, 4, "Setis_OnDied")