--[[ Borean Tundra -- Rig Hauler AC-9.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RigHaulerAC9_OnCombat(Unit, Event)
Unit:RegisterEvent("RigHaulerAC9_CrowdPummel", 10000, 0)
end

function RigHaulerAC9_CrowdPummel(pUnit, Event) 
pUnit:CastSpell(10887) 
end

function RigHaulerAC9_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RigHaulerAC9_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RigHaulerAC9_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25766, 1, "RigHaulerAC9_OnCombat")
RegisterUnitEvent(25766, 2, "RigHaulerAC9_OnLeaveCombat")
RegisterUnitEvent(25766, 3, "RigHaulerAC9_OnKilledTarget")
RegisterUnitEvent(25766, 4, "RigHaulerAC9_OnDied")