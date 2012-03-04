--[[ The Barrens -- Rocklance.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Rocklance_OnCombat(Unit, Event)
Unit:RegisterEvent("Rocklance_Cleave", 4000, 0)
Unit:RegisterEvent("Rocklance_DefensiveStance", 2000, 1)
Unit:RegisterEvent("Rocklance_SunderArmor", 6000, 0)
end

function Rocklance_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function Rocklance_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function Rocklance_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function Rocklance_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rocklance_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rocklance_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5841, 1, "Rocklance_OnCombat")
RegisterUnitEvent(5841, 2, "Rocklance_OnLeaveCombat")
RegisterUnitEvent(5841, 3, "Rocklance_OnKilledTarget")
RegisterUnitEvent(5841, 4, "Rocklance_OnDied")