--[[ Silithus -- Grubthor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Grubthor_OnCombat(Unit, Event)
Unit:RegisterEvent("Grubthor_Tramble", 6000, 0)
end

function Grubthor_Tramble(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function Grubthor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grubthor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grubthor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14477, 1, "Grubthor_OnCombat")
RegisterUnitEvent(14477, 2, "Grubthor_OnLeaveCombat")
RegisterUnitEvent(14477, 3, "Grubthor_OnKilledTarget")
RegisterUnitEvent(14477, 4, "Grubthor_OnDied")