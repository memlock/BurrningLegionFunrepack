--[[ The Barrens -- Baeldun Excavator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BaeldunExcavator_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunExcavator_DefensiveStance", 1000, 1)
Unit:RegisterEvent("BaeldunExcavator_SunderArmor", 5000, 0)
end

function BaeldunExcavator_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function BaeldunExcavator_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function BaeldunExcavator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunExcavator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunExcavator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3374, 1, "BaeldunExcavator_OnCombat")
RegisterUnitEvent(3374, 2, "BaeldunExcavator_OnLeaveCombat")
RegisterUnitEvent(3374, 3, "BaeldunExcavator_OnKilledTarget")
RegisterUnitEvent(3374, 4, "BaeldunExcavator_OnDied")