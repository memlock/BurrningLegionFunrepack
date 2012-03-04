--[[ Borean Tundra -- Bloodspore Firestarter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function BloodsporeFirestarter_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodsporeFirestarter_Fireball", 8000, 0)
Unit:RegisterEvent("BloodsporeFirestarter_FlamingTouch", 3000, 1)
Unit:RegisterEvent("BloodsporeFirestarter_MoltenArmor", 6000, 1)
end

function BloodsporeFirestarter_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodsporeFirestarter_FlamingTouch(pUnit, Event) 
pUnit:CastSpell(45985) 
end

function BloodsporeFirestarter_MoltenArmor(pUnit, Event) 
pUnit:CastSpell(35916) 
end

function BloodsporeFirestarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodsporeFirestarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodsporeFirestarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25470, 1, "BloodsporeFirestarter_OnCombat")
RegisterUnitEvent(25470, 2, "BloodsporeFirestarter_OnLeaveCombat")
RegisterUnitEvent(25470, 3, "BloodsporeFirestarter_OnKilledTarget")
RegisterUnitEvent(25470, 4, "BloodsporeFirestarter_OnDied")