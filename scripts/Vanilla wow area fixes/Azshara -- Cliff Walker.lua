--[[ Azshara -- Cliff Walker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function CliffWalker_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffWalker_WarStomp", 8000, 0)
end

function CliffWalker_WarStomp(pUnit, Event) 
pUnit:CastSpell(11876) 
end

function CliffWalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffWalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffWalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6148, 1, "CliffWalker_OnCombat")
RegisterUnitEvent(6148, 2, "CliffWalker_OnLeaveCombat")
RegisterUnitEvent(6148, 3, "CliffWalker_OnKilledTarget")
RegisterUnitEvent(6148, 4, "CliffWalker_OnDied")