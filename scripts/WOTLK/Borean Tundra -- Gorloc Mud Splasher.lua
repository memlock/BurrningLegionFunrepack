--[[ Borean Tundra -- Gorloc Mud Splasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocMudSplasher_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocMudSplasher_GorlocStomp", 6000, 0)
end

function GorlocMudSplasher_GorlocStomp(pUnit, Event) 
pUnit:CastSpell(50522) 
end

function GorlocMudSplasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocMudSplasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocMudSplasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25699, 1, "GorlocMudSplasher_OnCombat")
RegisterUnitEvent(25699, 2, "GorlocMudSplasher_OnLeaveCombat")
RegisterUnitEvent(25699, 3, "GorlocMudSplasher_OnKilledTarget")
RegisterUnitEvent(25699, 4, "GorlocMudSplasher_OnDied")