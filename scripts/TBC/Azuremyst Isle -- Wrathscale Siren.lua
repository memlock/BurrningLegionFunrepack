--[[ Azuremyst Isle -- Wrathscale Siren.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleSiren_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSiren_Screech", 8000, 0)
end

function WrathscaleSiren_Screech(pUnit, Event) 
pUnit:CastSpell(31273) 
end

function WrathscaleSiren_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSiren_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSiren_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17195, 1, "WrathscaleSiren_OnCombat")
RegisterUnitEvent(17195, 2, "WrathscaleSiren_OnLeaveCombat")
RegisterUnitEvent(17195, 3, "WrathscaleSiren_OnKilledTarget")
RegisterUnitEvent(17195, 4, "WrathscaleSiren_OnDied")