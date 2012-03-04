--[[ Dragonblight -- Tundra Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TundraScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraScavenger_Maul", 5000, 0)
end

function TundraScavenger_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function TundraScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27294, 1, "TundraScavenger_OnCombat")
RegisterUnitEvent(27294, 2, "TundraScavenger_OnLeaveCombat")
RegisterUnitEvent(27294, 3, "TundraScavenger_OnKilledTarget")
RegisterUnitEvent(27294, 4, "TundraScavenger_OnDied")