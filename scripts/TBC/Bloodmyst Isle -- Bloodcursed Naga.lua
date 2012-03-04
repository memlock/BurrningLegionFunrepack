--[[ Bloodmyst Isle -- Bloodcursed Naga.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BloodcursedNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodcursedNaga_FrostArmor", 2000, 1)
Unit:RegisterEvent("BloodcursedNaga_Frostbolt", 8000, 0)
end

function BloodcursedNaga_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodcursedNaga_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function BloodcursedNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodcursedNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodcursedNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17713, 1, "BloodcursedNaga_OnCombat")
RegisterUnitEvent(17713, 2, "BloodcursedNaga_OnLeaveCombat")
RegisterUnitEvent(17713, 3, "BloodcursedNaga_OnKilledTarget")
RegisterUnitEvent(17713, 4, "BloodcursedNaga_OnDied")