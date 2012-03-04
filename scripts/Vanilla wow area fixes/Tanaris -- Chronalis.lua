--[[ Tanaris -- Chronalis.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Chronalis_OnCombat(Unit, Event)
Unit:RegisterEvent("Chronalis_SandBreath", 10000, 0)
Unit:RegisterEvent("Chronalis_Cleave", 5000, 0)
end

function Chronalis_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function Chronalis_SandBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20717, pUnit:GetMainTank()) 
end

function Chronalis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chronalis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chronalis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8197, 1, "Chronalis_OnCombat")
RegisterUnitEvent(8197, 2, "Chronalis_OnLeaveCombat")
RegisterUnitEvent(8197, 3, "Chronalis_OnKilledTarget")
RegisterUnitEvent(8197, 4, "Chronalis_OnDied")