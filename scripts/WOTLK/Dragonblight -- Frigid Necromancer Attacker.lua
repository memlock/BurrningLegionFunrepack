--[[ Dragonblight -- Frigid Necromancer Attacker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrigidNecromancerAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidNecromancerAttacker_BoneArmor", 2000, 1)
Unit:RegisterEvent("FrigidNecromancerAttacker_ShadowBolt", 7000, 0)
end

function FrigidNecromancerAttacker_BoneArmor(pUnit, Event) 
pUnit:CastSpell(50324) 
end

function FrigidNecromancerAttacker_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FrigidNecromancerAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidNecromancerAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidNecromancerAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27687, 1, "FrigidNecromancerAttacker_OnCombat")
RegisterUnitEvent(27687, 2, "FrigidNecromancerAttacker_OnLeaveCombat")
RegisterUnitEvent(27687, 3, "FrigidNecromancerAttacker_OnKilledTarget")
RegisterUnitEvent(27687, 4, "FrigidNecromancerAttacker_OnDied")