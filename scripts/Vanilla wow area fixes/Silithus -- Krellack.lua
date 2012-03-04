--[[ Silithus -- Krellack.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function Krellack_OnCombat(Unit, Event)
Unit:RegisterEvent("Krellack_FatalSting", 8000, 0)
end

function Krellack_FatalSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17170, pUnit:GetMainTank()) 
end

function Krellack_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Krellack_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Krellack_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14476, 1, "Krellack_OnCombat")
RegisterUnitEvent(14476, 2, "Krellack_OnLeaveCombat")
RegisterUnitEvent(14476, 3, "Krellack_OnKilledTarget")
RegisterUnitEvent(14476, 4, "Krellack_OnDied")