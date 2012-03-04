--[[ Borean Tundra -- Injured Warsong Mage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function InjuredWarsongMage_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongMage_ArcaneExplosion", 6000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Blizzard", 10000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Pyroblast", 11000, 0)
end

function InjuredWarsongMage_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(34933) 
end

function InjuredWarsongMage_Blizzard(pUnit, Event) 
pUnit:CastSpell(46195) 
end

function InjuredWarsongMage_Pyroblast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17274, pUnit:GetMainTank()) 
end

function InjuredWarsongMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27107, 1, "InjuredWarsongMage_OnCombat")
RegisterUnitEvent(27107, 2, "InjuredWarsongMage_OnLeaveCombat")
RegisterUnitEvent(27107, 3, "InjuredWarsongMage_OnKilledTarget")
RegisterUnitEvent(27107, 4, "InjuredWarsongMage_OnDied")