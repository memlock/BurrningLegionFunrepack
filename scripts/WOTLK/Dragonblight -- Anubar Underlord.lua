--[[ Dragonblight -- Anubar Underlord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AnubarUnderlord_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarUnderlord_RearingStomp", 8000, 0)
end

function AnubarUnderlord_RearingStomp(pUnit, Event) 
pUnit:CastSpell(51681) 
end

function AnubarUnderlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarUnderlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarUnderlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26605, 1, "AnubarUnderlord_OnCombat")
RegisterUnitEvent(26605, 2, "AnubarUnderlord_OnLeaveCombat")
RegisterUnitEvent(26605, 3, "AnubarUnderlord_OnKilledTarget")
RegisterUnitEvent(26605, 4, "AnubarUnderlord_OnDied")