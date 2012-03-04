--[[ Ashenvale -- Oakpaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Oakpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Oakpaw_Rejuvenation", 8000, 0)
end

function Oakpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function Oakpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Oakpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Oakpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10640, 1, "Oakpaw_OnCombat")
RegisterUnitEvent(10640, 2, "Oakpaw_OnLeaveCombat")
RegisterUnitEvent(10640, 3, "Oakpaw_OnKilledTarget")
RegisterUnitEvent(10640, 4, "Oakpaw_OnDied")