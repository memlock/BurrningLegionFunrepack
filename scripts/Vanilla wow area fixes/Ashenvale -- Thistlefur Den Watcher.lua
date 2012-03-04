--[[ Ashenvale -- Thistlefur Den Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurDenWatcher_FrenziedRage", 8000, 0)
end

function ThistlefurDenWatcher_FrenziedRage(pUnit, Event) 
pUnit:CastSpell(3940) 
end

function ThistlefurDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3923, 1, "ThistlefurDenWatcher_OnCombat")
RegisterUnitEvent(3923, 2, "ThistlefurDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3923, 3, "ThistlefurDenWatcher_OnKilledTarget")
RegisterUnitEvent(3923, 4, "ThistlefurDenWatcher_OnDied")