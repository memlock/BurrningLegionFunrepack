--[[ Borean Tundra -- Injured Warsong Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongEngineer_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongEngineer_GoblinDragonGun", 8000, 0)
Unit:RegisterEvent("InjuredWarsongEngineer_SuperShrinkRay", 10000, 0)
end

function InjuredWarsongEngineer_GoblinDragonGun(pUnit, Event) 
pUnit:CastSpell(44273) 
end

function InjuredWarsongEngineer_SuperShrinkRay(pUnit, Event) 
pUnit:CastSpell(22742) 
end

function InjuredWarsongEngineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongEngineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongEngineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27110, 1, "InjuredWarsongEngineer_OnCombat")
RegisterUnitEvent(27110, 2, "InjuredWarsongEngineer_OnLeaveCombat")
RegisterUnitEvent(27110, 3, "InjuredWarsongEngineer_OnKilledTarget")
RegisterUnitEvent(27110, 4, "InjuredWarsongEngineer_OnDied")