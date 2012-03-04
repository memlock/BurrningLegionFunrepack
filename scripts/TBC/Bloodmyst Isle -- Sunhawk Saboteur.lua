--[[ Bloodmyst Isle -- Sunhawk Saboteur.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function SunhawkSaboteur_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSaboteur_MarkoftheSunhawk", 7500, 0)
Unit:RegisterEvent("SunhawkSaboteur_MultiShot", 9000, 0)
Unit:RegisterEvent("SunhawkSaboteur_Shoot", 6000, 0)
end

function SunhawkSaboteur_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSaboteur_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14433, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunhawkSaboteur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSaboteur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSaboteur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17609, 1, "SunhawkSaboteur_OnCombat")
RegisterUnitEvent(17609, 2, "SunhawkSaboteur_OnLeaveCombat")
RegisterUnitEvent(17609, 3, "SunhawkSaboteur_OnKilledTarget")
RegisterUnitEvent(17609, 4, "SunhawkSaboteur_OnDied")