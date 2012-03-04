--[[ Desolace -- Carrion Horror.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function CarrionHorror_OnCombat(Unit, Event)
Unit:RegisterEvent("CarrionHorror_InfectedWound", 5000, 2)
end

function CarrionHorror_InfectedWound(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3427, pUnit:GetMainTank()) 
end

function CarrionHorror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CarrionHorror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CarrionHorror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4695, 1, "CarrionHorror_OnCombat")
RegisterUnitEvent(4695, 2, "CarrionHorror_OnLeaveCombat")
RegisterUnitEvent(4695, 3, "CarrionHorror_OnKilledTarget")
RegisterUnitEvent(4695, 4, "CarrionHorror_OnDied")