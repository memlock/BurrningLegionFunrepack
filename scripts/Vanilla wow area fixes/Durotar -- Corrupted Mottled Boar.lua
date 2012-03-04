--[[ Durotar -- Corrupted Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function CorruptedMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedMottledBoar_CorruptedIntellect", 10000, 0)
Unit:RegisterEvent("CorruptedMottledBoar_BoarCharge", 6000, 0)
end

function CorruptedMottledBoar_CorruptedIntellect(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6818, pUnit:GetMainTank()) 
end

function CorruptedMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function CorruptedMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3225, 1, "CorruptedMottledBoar_OnCombat")
RegisterUnitEvent(3225, 2, "CorruptedMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3225, 3, "CorruptedMottledBoar_OnKilledTarget")
RegisterUnitEvent(3225, 4, "CorruptedMottledBoar_OnDied")