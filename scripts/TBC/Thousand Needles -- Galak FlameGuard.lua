--[[ Thousand Needles -- Galak FlameGuard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GalakFlameGuard_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakFlameGuard_DemoralizingShout", 10000, 0)
end

function GalakFlameGuard_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakFlameGuard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakFlameGuard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakFlameGuard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7404, 1, "GalakFlameGuard_OnCombat")
RegisterUnitEvent(7404, 2, "GalakFlameGuard_OnLeaveCombat")
RegisterUnitEvent(7404, 3, "GalakFlameGuard_OnKilledTarget")
RegisterUnitEvent(7404, 4, "GalakFlameGuard_OnDied")