--[[ Dragonblight -- Reanimated Frost Wyrm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedFrostWyrm_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedFrostWyrm_FrostBreath", 6500, 0)
end

function ReanimatedFrostWyrm_FrostBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47425, pUnit:GetMainTank()) 
end

function ReanimatedFrostWyrm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedFrostWyrm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedFrostWyrm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26841, 1, "ReanimatedFrostWyrm_OnCombat")
RegisterUnitEvent(26841, 2, "ReanimatedFrostWyrm_OnLeaveCombat")
RegisterUnitEvent(26841, 3, "ReanimatedFrostWyrm_OnKilledTarget")
RegisterUnitEvent(26841, 4, "ReanimatedFrostWyrm_OnDied")