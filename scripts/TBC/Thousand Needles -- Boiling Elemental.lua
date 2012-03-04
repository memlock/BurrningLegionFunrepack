--[[ Thousand Needles -- Boiling Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function BoilingElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("BoilingElemental_SteamJet", 15000, 0)
end

function BoilingElemental_SteamJet(pUnit, Event) 
pUnit:CastSpell(11983) 
end

function BoilingElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoilingElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoilingElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10757, 1, "BoilingElemental_OnCombat")
RegisterUnitEvent(10757, 2, "BoilingElemental_OnLeaveCombat")
RegisterUnitEvent(10757, 3, "BoilingElemental_OnKilledTarget")
RegisterUnitEvent(10757, 4, "BoilingElemental_OnDied")