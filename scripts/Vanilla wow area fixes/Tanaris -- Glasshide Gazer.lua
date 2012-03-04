--[[ Tanaris -- Glasshide Gazer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshideGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideGazer_CrystalGaze", 10000, 0)
end

function GlasshideGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function GlasshideGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5420, 1, "GlasshideGazer_OnCombat")
RegisterUnitEvent(5420, 2, "GlasshideGazer_OnLeaveCombat")
RegisterUnitEvent(5420, 3, "GlasshideGazer_OnKilledTarget")
RegisterUnitEvent(5420, 4, "GlasshideGazer_OnDied")