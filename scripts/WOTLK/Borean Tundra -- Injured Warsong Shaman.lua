--[[ Borean Tundra -- Injured Warsong Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongShaman_ChainLightning", 8000, 0)
Unit:RegisterEvent("InjuredWarsongShaman_EarthShock", 6000, 0)
end

function InjuredWarsongShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16033, pUnit:GetMainTank()) 
end

function InjuredWarsongShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25025, pUnit:GetMainTank()) 
end

function InjuredWarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27108, 1, "InjuredWarsongShaman_OnCombat")
RegisterUnitEvent(27108, 2, "InjuredWarsongShaman_OnLeaveCombat")
RegisterUnitEvent(27108, 3, "InjuredWarsongShaman_OnKilledTarget")
RegisterUnitEvent(27108, 4, "InjuredWarsongShaman_OnDied")