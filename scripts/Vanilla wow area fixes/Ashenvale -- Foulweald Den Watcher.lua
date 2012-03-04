--[[ Ashenvale -- Foulweald Den Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdDenWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdDenWatcher_Thrash", 5000, 0)
end

function FoulwealdDenWatcher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FoulwealdDenWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdDenWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdDenWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3746, 1, "FoulwealdDenWatcher_OnCombat")
RegisterUnitEvent(3746, 2, "FoulwealdDenWatcher_OnLeaveCombat")
RegisterUnitEvent(3746, 3, "FoulwealdDenWatcher_OnKilledTarget")
RegisterUnitEvent(3746, 4, "FoulwealdDenWatcher_OnDied")