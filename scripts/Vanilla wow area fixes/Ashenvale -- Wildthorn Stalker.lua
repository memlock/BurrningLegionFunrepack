--[[ Ashenvale -- Wildthorn Stalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornStalker_Web", 10000, 0)
end

function WildthornStalker_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12023, pUnit:GetMainTank()) 
end

function WildthornStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3819, 1, "WildthornStalker_OnCombat")
RegisterUnitEvent(3819, 2, "WildthornStalker_OnLeaveCombat")
RegisterUnitEvent(3819, 3, "WildthornStalker_OnKilledTarget")
RegisterUnitEvent(3819, 4, "WildthornStalker_OnDied")