--[[ The Barrens -- Hagg Taurenbane.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function HaggTaurenbane_OnCombat(Unit, Event)
Unit:RegisterEvent("HaggTaurenbane_Cleave", 6000, 0)
Unit:RegisterEvent("HaggTaurenbane_DemoralizingShout", 4000, 1)
Unit:RegisterEvent("HaggTaurenbane_Hamstring", 10000, 0)
end

function HaggTaurenbane_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function HaggTaurenbane_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function HaggTaurenbane_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function HaggTaurenbane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaggTaurenbane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaggTaurenbane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5859, 1, "HaggTaurenbane_OnCombat")
RegisterUnitEvent(5859, 2, "HaggTaurenbane_OnLeaveCombat")
RegisterUnitEvent(5859, 3, "HaggTaurenbane_OnKilledTarget")
RegisterUnitEvent(5859, 4, "HaggTaurenbane_OnDied")