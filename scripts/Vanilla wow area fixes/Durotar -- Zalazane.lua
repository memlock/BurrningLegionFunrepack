--[[ Durotar -- Zalazane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function Zalazane_OnCombat(Unit, Event)
Unit:RegisterEvent("Zalazane_Shrink", 6000, 0)
Unit:RegisterEvent("Zalazane_HealingWave", 12000, 0)
end

function Zalazane_Shrink(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7289, pUnit:GetMainTank()) 
end

function Zalazane_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function Zalazane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zalazane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zalazane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3205, 1, "Zalazane_OnCombat")
RegisterUnitEvent(3205, 2, "Zalazane_OnLeaveCombat")
RegisterUnitEvent(3205, 3, "Zalazane_OnKilledTarget")
RegisterUnitEvent(3205, 4, "Zalazane_OnDied")