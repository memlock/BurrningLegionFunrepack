--[[ Teldrassil -- Bloodfeather Fury.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherFury_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherFury_Savagery", 8000, 0)
end

function BloodfeatherFury_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function BloodfeatherFury_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherFury_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherFury_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2019, 1, "BloodfeatherFury_OnCombat")
RegisterUnitEvent(2019, 2, "BloodfeatherFury_OnLeaveCombat")
RegisterUnitEvent(2019, 3, "BloodfeatherFury_OnKilledTarget")
RegisterUnitEvent(2019, 4, "BloodfeatherFury_OnDied")