--[[ Tanaris -- Glasshide Petrifier.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GlasshidePetrifier_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshidePetrifier_CrystalGaze", 15000, 0)
end

function GlasshidePetrifier_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function GlasshidePetrifier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshidePetrifier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshidePetrifier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5421, 1, "GlasshidePetrifier_OnCombat")
RegisterUnitEvent(5421, 2, "GlasshidePetrifier_OnLeaveCombat")
RegisterUnitEvent(5421, 3, "GlasshidePetrifier_OnKilledTarget")
RegisterUnitEvent(5421, 4, "GlasshidePetrifier_OnDied")