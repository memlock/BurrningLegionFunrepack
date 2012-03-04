--[[ Borean Tundra -- Tundra Wolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TundraWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraWolf_InfectedBite", 8000, 0)
end

function TundraWolf_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function TundraWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25675, 1, "TundraWolf_OnCombat")
RegisterUnitEvent(25675, 2, "TundraWolf_OnLeaveCombat")
RegisterUnitEvent(25675, 3, "TundraWolf_OnKilledTarget")
RegisterUnitEvent(25675, 4, "TundraWolf_OnDied")