--[[ Borean Tundra -- Mammoth Calf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MammothCalf_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothCalf_Trample", 6000, 0)
end

function MammothCalf_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function MammothCalf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothCalf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothCalf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24613, 1, "MammothCalf_OnCombat")
RegisterUnitEvent(24613, 2, "MammothCalf_OnLeaveCombat")
RegisterUnitEvent(24613, 3, "MammothCalf_OnKilledTarget")
RegisterUnitEvent(24613, 4, "MammothCalf_OnDied")