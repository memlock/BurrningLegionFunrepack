--[[ Howling Fjord -- Scoodles.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Scoodles_OnCombat(Unit, Event)
Unit:RegisterEvent("Scoodles_FlipperThwack", 7000, 0)
Unit:RegisterEvent("Scoodles_PowerfulBite", 6000, 0)
end

function Scoodles_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Scoodles_PowerfulBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48287, pUnit:GetMainTank()) 
end

function Scoodles_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scoodles_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scoodles_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24899, 1, "Scoodles_OnCombat")
RegisterUnitEvent(24899, 2, "Scoodles_OnLeaveCombat")
RegisterUnitEvent(24899, 3, "Scoodles_OnKilledTarget")
RegisterUnitEvent(24899, 4, "Scoodles_OnDied")