--[[ Teldrassil -- Feral Nightsaber.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FeralNightsaber_OnCombat(Unit, Event)
Unit:RegisterEvent("FeralNightsaber_MuscleTear", 8000, 0)
end

function FeralNightsaber_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function FeralNightsaber_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeralNightsaber_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeralNightsaber_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2034, 1, "FeralNightsaber_OnCombat")
RegisterUnitEvent(2034, 2, "FeralNightsaber_OnLeaveCombat")
RegisterUnitEvent(2034, 3, "FeralNightsaber_OnKilledTarget")
RegisterUnitEvent(2034, 4, "FeralNightsaber_OnDied")