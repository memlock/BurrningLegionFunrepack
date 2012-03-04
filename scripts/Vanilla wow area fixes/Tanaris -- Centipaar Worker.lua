--[[ Tanaris -- Centipaar Worker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CentipaarWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarWorker_Thrash", 6000, 0)
end

function CentipaarWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5458, 1, "CentipaarWorker_OnCombat")
RegisterUnitEvent(5458, 2, "CentipaarWorker_OnLeaveCombat")
RegisterUnitEvent(5458, 3, "CentipaarWorker_OnKilledTarget")
RegisterUnitEvent(5458, 4, "CentipaarWorker_OnDied")