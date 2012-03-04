--[[ Dragonblight -- Injured Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InjuredMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredMammoth_Trample", 6000, 0)
end

function InjuredMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function InjuredMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26711, 1, "InjuredMammoth_OnCombat")
RegisterUnitEvent(26711, 2, "InjuredMammoth_OnLeaveCombat")
RegisterUnitEvent(26711, 3, "InjuredMammoth_OnKilledTarget")
RegisterUnitEvent(26711, 4, "InjuredMammoth_OnDied")