--[[ Borean Tundra -- Nexus Watcher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NexusWatcher_OnCombat(Unit, Event)
Unit:RegisterEvent("NexusWatcher_IntangiblePresence", 10000, 0)
Unit:RegisterEvent("NexusWatcher_Netherbreath", 7500, 0)
end

function NexusWatcher_IntangiblePresence(pUnit, Event) 
pUnit:CastSpell(36513) 
end

function NexusWatcher_Netherbreath(pUnit, Event) 
pUnit:CastSpell(36631) 
end

function NexusWatcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NexusWatcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NexusWatcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24770, 1, "NexusWatcher_OnCombat")
RegisterUnitEvent(24770, 2, "NexusWatcher_OnLeaveCombat")
RegisterUnitEvent(24770, 3, "NexusWatcher_OnKilledTarget")
RegisterUnitEvent(24770, 4, "NexusWatcher_OnDied")