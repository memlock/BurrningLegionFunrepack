--[[ Dragonblight -- Frigid Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidNecromancer_BoneArmor", 2000, 1)
Unit:RegisterEvent("FrigidNecromancer_ShadowBolt", 7000, 0)
end

function FrigidNecromancer_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function FrigidNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FrigidNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27539, 1, "FrigidNecromancer_OnCombat")
RegisterUnitEvent(27539, 2, "FrigidNecromancer_OnLeaveCombat")
RegisterUnitEvent(27539, 3, "FrigidNecromancer_OnKilledTarget")
RegisterUnitEvent(27539, 4, "FrigidNecromancer_OnDied")