--[[ Borean Tundra -- Raging Boiler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RagingBoiler_OnCombat(Unit, Event)
Unit:RegisterEvent("RagingBoiler_BoilingBlood", 8000, 0)
end

function RagingBoiler_BoilingBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50207, pUnit:GetMainTank()) 
end

function RagingBoiler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagingBoiler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagingBoiler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25417, 1, "RagingBoiler_OnCombat")
RegisterUnitEvent(25417, 2, "RagingBoiler_OnLeaveCombat")
RegisterUnitEvent(25417, 3, "RagingBoiler_OnKilledTarget")
RegisterUnitEvent(25417, 4, "RagingBoiler_OnDied")