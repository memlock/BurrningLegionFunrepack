--[[ Borean Tundra -- Ragnar Drakkarlund.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function RagnarDrakkarlund_OnCombat(Unit, Event)
Unit:RegisterEvent("RagnarDrakkarlund_Whirlwind", 8000, 0)
end

function RagnarDrakkarlund_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function RagnarDrakkarlund_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagnarDrakkarlund_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagnarDrakkarlund_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26451, 1, "RagnarDrakkarlund_OnCombat")
RegisterUnitEvent(26451, 2, "RagnarDrakkarlund_OnLeaveCombat")
RegisterUnitEvent(26451, 3, "RagnarDrakkarlund_OnKilledTarget")
RegisterUnitEvent(26451, 4, "RagnarDrakkarlund_OnDied")