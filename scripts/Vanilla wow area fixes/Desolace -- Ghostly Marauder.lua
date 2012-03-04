--[[ Desolace -- Ghostly Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GhostlyMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlyMarauder_Strike", 6000, 0)
end

function GhostlyMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GhostlyMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlyMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlyMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11687, 1, "GhostlyMarauder_OnCombat")
RegisterUnitEvent(11687, 2, "GhostlyMarauder_OnLeaveCombat")
RegisterUnitEvent(11687, 3, "GhostlyMarauder_OnKilledTarget")
RegisterUnitEvent(11687, 4, "GhostlyMarauder_OnDied")