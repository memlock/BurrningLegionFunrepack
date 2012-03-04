--[[ Thousand Needles -- Saltstone Gazer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltstoneGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneGazer_CrystalGaze", 12000, 0)
end

function SaltstoneGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function SaltstoneGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4150, 1, "SaltstoneGazer_OnCombat")
RegisterUnitEvent(4150, 2, "SaltstoneGazer_OnLeaveCombat")
RegisterUnitEvent(4150, 3, "SaltstoneGazer_OnKilledTarget")
RegisterUnitEvent(4150, 4, "SaltstoneGazer_OnDied")