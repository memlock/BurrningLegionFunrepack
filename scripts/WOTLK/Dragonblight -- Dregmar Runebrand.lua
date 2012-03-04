--[[ Dragonblight -- Dregmar Runebrand.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DregmarRunebrand_OnCombat(Unit, Event)
Unit:RegisterEvent("DregmarRunebrand_RuneShield", 20000, 1)
end

function DregmarRunebrand_RuneShield(pUnit, Event) 
pUnit:CastSpell(48325) 
end

function DregmarRunebrand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DregmarRunebrand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DregmarRunebrand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27003, 1, "DregmarRunebrand_OnCombat")
RegisterUnitEvent(27003, 2, "DregmarRunebrand_OnLeaveCombat")
RegisterUnitEvent(27003, 3, "DregmarRunebrand_OnKilledTarget")
RegisterUnitEvent(27003, 4, "DregmarRunebrand_OnDied")