--[[ Dragonblight -- Onslaught Raven Archon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtRavenArchon_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtRavenArchon_RavenFlock", 7000, 0)
Unit:RegisterEvent("OnslaughtRavenArchon_UnholyFrenzy", 4000, 1)
end

function OnslaughtRavenArchon_RavenFlock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50740, pUnit:GetMainTank()) 
end

function OnslaughtRavenArchon_UnholyFrenzy(pUnit, Event) 
pUnit:CastSpell(50743) 
end

function OnslaughtRavenArchon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtRavenArchon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtRavenArchon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27357, 1, "OnslaughtRavenArchon_OnCombat")
RegisterUnitEvent(27357, 2, "OnslaughtRavenArchon_OnLeaveCombat")
RegisterUnitEvent(27357, 3, "OnslaughtRavenArchon_OnKilledTarget")
RegisterUnitEvent(27357, 4, "OnslaughtRavenArchon_OnDied")