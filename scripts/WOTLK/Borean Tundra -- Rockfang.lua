--[[ Borean Tundra -- Rockfang.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function Rockfang_OnCombat(Unit, Event)
Unit:RegisterEvent("Rockfang_ChillingHowl", 10000, 0)
end

function Rockfang_ChillingHowl(pUnit, Event) 
pUnit:CastSpell(32918) 
end

function Rockfang_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rockfang_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rockfang_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25774, 1, "Rockfang_OnCombat")
RegisterUnitEvent(25774, 2, "Rockfang_OnLeaveCombat")
RegisterUnitEvent(25774, 3, "Rockfang_OnKilledTarget")
RegisterUnitEvent(25774, 4, "Rockfang_OnDied")