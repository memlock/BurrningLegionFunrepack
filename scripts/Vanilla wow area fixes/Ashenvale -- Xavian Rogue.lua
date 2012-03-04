--[[ Ashenvale -- Xavian Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function XavianRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianRogue_GiftoftheXavian", 13000, 0)
end

function XavianRogue_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3752, 1, "XavianRogue_OnCombat")
RegisterUnitEvent(3752, 2, "XavianRogue_OnLeaveCombat")
RegisterUnitEvent(3752, 3, "XavianRogue_OnKilledTarget")
RegisterUnitEvent(3752, 4, "XavianRogue_OnDied")