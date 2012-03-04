--[[ Durotar -- Geolord Mottle.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GeolordMottle_OnCombat(Unit, Event)
Unit:RegisterEvent("GeolordMottle_LightningShield", 5000, 0)
Unit:RegisterEvent("GeolordMottle_HealingWave", 12000, 0)
end

function GeolordMottle_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function GeolordMottle_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function GeolordMottle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeolordMottle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeolordMottle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5826, 1, "GeolordMottle_OnCombat")
RegisterUnitEvent(5826, 2, "GeolordMottle_OnLeaveCombat")
RegisterUnitEvent(5826, 3, "GeolordMottle_OnKilledTarget")
RegisterUnitEvent(5826, 4, "GeolordMottle_OnDied")