--[[ Teldrassil -- Bloodfeather Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BloodfeatherSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherSorceress_FrostArmor", 2000, 2)
Unit:RegisterEvent("BloodfeatherSorceress_Fireball", 8000, 0)
end

function BloodfeatherSorceress_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function BloodfeatherSorceress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function BloodfeatherSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2018, 1, "BloodfeatherSorceress_OnCombat")
RegisterUnitEvent(2018, 2, "BloodfeatherSorceress_OnLeaveCombat")
RegisterUnitEvent(2018, 3, "BloodfeatherSorceress_OnKilledTarget")
RegisterUnitEvent(2018, 4, "BloodfeatherSorceress_OnDied")