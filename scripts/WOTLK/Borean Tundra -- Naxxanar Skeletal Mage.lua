--[[ Borean Tundra -- Naxxanar Skeletal Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NaxxanarSkeletalMage_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxanarSkeletalMage_Fireball", 7000, 0)
Unit:RegisterEvent("NaxxanarSkeletalMage_Frostbolt", 10000, 0)
end

function NaxxanarSkeletalMage_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function NaxxanarSkeletalMage_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function NaxxanarSkeletalMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxanarSkeletalMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxanarSkeletalMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25396, 1, "NaxxanarSkeletalMage_OnCombat")
RegisterUnitEvent(25396, 2, "NaxxanarSkeletalMage_OnLeaveCombat")
RegisterUnitEvent(25396, 3, "NaxxanarSkeletalMage_OnKilledTarget")
RegisterUnitEvent(25396, 4, "NaxxanarSkeletalMage_OnDied")