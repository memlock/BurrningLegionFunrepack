--[[ Azshara -- Timbermaw Den Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TimbermawDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawDenWatcher_BattleShout", 5000, 0)
end

function TimbermawDenWatcher_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function TimbermawDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6187, 1, "TimbermawDenWatcher_OnCombat")
RegisterUnitEvent(6187, 2, "TimbermawDenWatcher_OnLeaveCombat")
RegisterUnitEvent(6187, 3, "TimbermawDenWatcher_OnKilledTarget")
RegisterUnitEvent(6187, 4, "TimbermawDenWatcher_OnDied")