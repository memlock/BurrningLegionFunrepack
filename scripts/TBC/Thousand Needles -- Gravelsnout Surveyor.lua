--[[ Thousand Needles -- Gravelsnout Surveyor.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutSurveyor_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutSurveyor_Frostbolt", 6000, 0)
end

function GravelsnoutSurveyor_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20806, pUnit:GetMainTank()) 
end

function GravelsnoutSurveyor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutSurveyor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutSurveyor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4116, 1, "GravelsnoutSurveyor_OnCombat")
RegisterUnitEvent(4116, 2, "GravelsnoutSurveyor_OnLeaveCombat")
RegisterUnitEvent(4116, 3, "GravelsnoutSurveyor_OnKilledTarget")
RegisterUnitEvent(4116, 4, "GravelsnoutSurveyor_OnDied")