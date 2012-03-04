--[[ Borean Tundra -- Minion of Kaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MinionofKaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MinionofKaw_DestructiveStrike", 8000, 0)
end

function MinionofKaw_DestructiveStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51430, pUnit:GetMainTank()) 
end

function MinionofKaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MinionofKaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MinionofKaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25880, 1, "MinionofKaw_OnCombat")
RegisterUnitEvent(25880, 2, "MinionofKaw_OnLeaveCombat")
RegisterUnitEvent(25880, 3, "MinionofKaw_OnKilledTarget")
RegisterUnitEvent(25880, 4, "MinionofKaw_OnDied")