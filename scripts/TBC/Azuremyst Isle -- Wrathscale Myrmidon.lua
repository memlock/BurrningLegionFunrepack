--[[ Azuremyst Isle -- Wrathscale Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMyrmidon_Strike", 6000, 0)
end

function WrathscaleMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17194, 1, "WrathscaleMyrmidon_OnCombat")
RegisterUnitEvent(17194, 2, "WrathscaleMyrmidon_OnLeaveCombat")
RegisterUnitEvent(17194, 3, "WrathscaleMyrmidon_OnKilledTarget")
RegisterUnitEvent(17194, 4, "WrathscaleMyrmidon_OnDied")