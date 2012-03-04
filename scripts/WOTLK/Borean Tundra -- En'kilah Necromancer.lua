--[[ Borean Tundra -- En'kilah Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahNecromancer_Corruption", 10000, 0)
Unit:RegisterEvent("EnkilahNecromancer_ShadowBolt", 7000, 0)
end

function EnkilahNecromancer_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32063, pUnit:GetMainTank()) 
end

function EnkilahNecromancer_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function EnkilahNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25378, 1, "EnkilahNecromancer_OnCombat")
RegisterUnitEvent(25378, 2, "EnkilahNecromancer_OnLeaveCombat")
RegisterUnitEvent(25378, 3, "EnkilahNecromancer_OnKilledTarget")
RegisterUnitEvent(25378, 4, "EnkilahNecromancer_OnDied")