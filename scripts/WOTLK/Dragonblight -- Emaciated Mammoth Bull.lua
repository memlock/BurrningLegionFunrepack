--[[ Dragonblight -- Emaciated Mammoth Bull.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmaciatedMammothBull_OnCombat(Unit, Event)
Unit:RegisterEvent("EmaciatedMammothBull_Trample", 6000, 0)
end

function EmaciatedMammothBull_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function EmaciatedMammothBull_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmaciatedMammothBull_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmaciatedMammothBull_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26271, 1, "EmaciatedMammothBull_OnCombat")
RegisterUnitEvent(26271, 2, "EmaciatedMammothBull_OnLeaveCombat")
RegisterUnitEvent(26271, 3, "EmaciatedMammothBull_OnKilledTarget")
RegisterUnitEvent(26271, 4, "EmaciatedMammothBull_OnDied")