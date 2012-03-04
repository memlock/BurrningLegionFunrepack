--[[ Borean Tundra -- Bone Warrior.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BoneWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("BoneWarrior_SunderArmor", 6000, 0)
end

function BoneWarrior_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function BoneWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoneWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoneWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26126, 1, "BoneWarrior_OnCombat")
RegisterUnitEvent(26126, 2, "BoneWarrior_OnLeaveCombat")
RegisterUnitEvent(26126, 3, "BoneWarrior_OnKilledTarget")
RegisterUnitEvent(26126, 4, "BoneWarrior_OnDied")