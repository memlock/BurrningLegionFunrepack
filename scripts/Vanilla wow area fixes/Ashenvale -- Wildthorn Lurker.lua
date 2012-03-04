--[[ Ashenvale -- Wildthorn Lurker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornLurker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornLurker_Hide", 1000, 1)
end

function WildthornLurker_Hide(pUnit, Event) 
pUnit:CastSpell(6920) 
end

function WildthornLurker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornLurker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornLurker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3821, 1, "WildthornLurker_OnCombat")
RegisterUnitEvent(3821, 2, "WildthornLurker_OnLeaveCombat")
RegisterUnitEvent(3821, 3, "WildthornLurker_OnKilledTarget")
RegisterUnitEvent(3821, 4, "WildthornLurker_OnDied")