--[[ Azuremyst Isle -- Wrathscale Naga.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleNaga_Hamstring", 8000, 0)
end

function WrathscaleNaga_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WrathscaleNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17193, 1, "WrathscaleNaga_OnCombat")
RegisterUnitEvent(17193, 2, "WrathscaleNaga_OnLeaveCombat")
RegisterUnitEvent(17193, 3, "WrathscaleNaga_OnKilledTarget")
RegisterUnitEvent(17193, 4, "WrathscaleNaga_OnDied")