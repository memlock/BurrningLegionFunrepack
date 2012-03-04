--[[ Dragonblight -- Emaciated Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmaciatedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("EmaciatedMammoth_Trample", 6000, 0)
end

function EmaciatedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function EmaciatedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmaciatedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmaciatedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26272, 1, "EmaciatedMammoth_OnCombat")
RegisterUnitEvent(26272, 2, "EmaciatedMammoth_OnLeaveCombat")
RegisterUnitEvent(26272, 3, "EmaciatedMammoth_OnKilledTarget")
RegisterUnitEvent(26272, 4, "EmaciatedMammoth_OnDied")