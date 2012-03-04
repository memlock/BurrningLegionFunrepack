--[[ Stonetalon Mountains -- Deepmoss Hatchling.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_SummonDeepmossMatriarch", 4000, 1)
end

function DeepmossCreeper_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function DaughterofCenarius_SummonDeepmossMatriarch(pUnit, Event) 
pUnit:CastSpell(6536) 
end

function DeepmossHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4263, 1, "DeepmossHatchling_OnCombat")
RegisterUnitEvent(4263, 2, "DeepmossHatchling_OnLeaveCombat")
RegisterUnitEvent(4263, 3, "DeepmossHatchling_OnKilledTarget")
RegisterUnitEvent(4263, 4, "DeepmossHatchling_OnDied")