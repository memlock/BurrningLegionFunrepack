--[[ Dragonblight -- Decrepit Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DecrepitNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("DecrepitNecromancer_ConversionBeam", 8000, 0)
Unit:RegisterEvent("DecrepitNecromancer_ShadowBolt", 5000, 0)
end

function DecrepitNecromancer_ConversionBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50659, pUnit:GetMainTank()) 
end

function DecrepitNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DecrepitNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DecrepitNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DecrepitNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26942, 1, "DecrepitNecromancer_OnCombat")
RegisterUnitEvent(26942, 2, "DecrepitNecromancer_OnLeaveCombat")
RegisterUnitEvent(26942, 3, "DecrepitNecromancer_OnKilledTarget")
RegisterUnitEvent(26942, 4, "DecrepitNecromancer_OnDied")