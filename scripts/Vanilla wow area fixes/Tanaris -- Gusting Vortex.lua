--[[ Tanaris -- Gusting Vortex.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GustingVortex_OnCombat(Unit, Event)
Unit:RegisterEvent("GustingVortex_GustofWind", 8000, 0)
end

function GustingVortex_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function GustingVortex_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GustingVortex_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GustingVortex_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8667, 1, "GustingVortex_OnCombat")
RegisterUnitEvent(8667, 2, "GustingVortex_OnLeaveCombat")
RegisterUnitEvent(8667, 3, "GustingVortex_OnKilledTarget")
RegisterUnitEvent(8667, 4, "GustingVortex_OnDied")