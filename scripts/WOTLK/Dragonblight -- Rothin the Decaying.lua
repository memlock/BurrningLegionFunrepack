--[[ Dragonblight -- Rothin the Decaying.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function RothintheDecaying_OnCombat(Unit, Event)
Unit:RegisterEvent("RothintheDecaying_AegisofNeltharion", 4000, 1)
Unit:RegisterEvent("RothintheDecaying_Shadowflame", 7000, 0)
Unit:RegisterEvent("RothintheDecaying_ShadowBolt", 8000, 0)
end

function RothintheDecaying_AegisofNeltharion(pUnit, Event) 
pUnit:CastSpell(51512) 
end

function RothintheDecaying_Shadowflame(pUnit, Event) 
pUnit:CastSpell(51337) 
end

function RothintheDecaying_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function RothintheDecaying_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RothintheDecaying_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RothintheDecaying_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27355, 1, "RothintheDecaying_OnCombat")
RegisterUnitEvent(27355, 2, "RothintheDecaying_OnLeaveCombat")
RegisterUnitEvent(27355, 3, "RothintheDecaying_OnKilledTarget")
RegisterUnitEvent(27355, 4, "RothintheDecaying_OnDied")