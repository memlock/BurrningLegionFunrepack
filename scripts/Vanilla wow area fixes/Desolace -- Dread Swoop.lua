--[[ Desolace -- Dread Swoop.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function DreadSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadSwoop_Swoop", 8000, 0)
end

function DreadSwoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function DreadSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4692, 1, "DreadSwoop_OnCombat")
RegisterUnitEvent(4692, 2, "DreadSwoop_OnLeaveCombat")
RegisterUnitEvent(4692, 3, "DreadSwoop_OnKilledTarget")
RegisterUnitEvent(4692, 4, "DreadSwoop_OnDied")