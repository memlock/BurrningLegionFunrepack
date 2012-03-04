--[[ Borean Tundra -- Risen Longrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RisenLongrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenLongrunner_GhostStrike", 8000, 0)
end

function RisenLongrunner_GhostStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36093, pUnit:GetMainTank()) 
end

function RisenLongrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenLongrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenLongrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25350, 1, "RisenLongrunner_OnCombat")
RegisterUnitEvent(25350, 2, "RisenLongrunner_OnLeaveCombat")
RegisterUnitEvent(25350, 3, "RisenLongrunner_OnKilledTarget")
RegisterUnitEvent(25350, 4, "RisenLongrunner_OnDied")