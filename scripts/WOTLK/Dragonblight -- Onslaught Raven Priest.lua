--[[ Dragonblight -- Onslaught Raven Priest.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtRavenPriest_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtRavenPriest_RavenFlock", 7000, 0)
Unit:RegisterEvent("OnslaughtRavenPriest_RavenHeal", 9000, 0)
end

function OnslaughtRavenPriest_RavenFlock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50740, pUnit:GetClosestPlayer()) 
end

function OnslaughtRavenPriest_RavenHeal(pUnit, Event) 
pUnit:CastSpell(50750) 
end

function OnslaughtRavenPriest_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtRavenPriest_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtRavenPriest_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27202, 1, "OnslaughtRavenPriest_OnCombat")
RegisterUnitEvent(27202, 2, "OnslaughtRavenPriest_OnLeaveCombat")
RegisterUnitEvent(27202, 3, "OnslaughtRavenPriest_OnKilledTarget")
RegisterUnitEvent(27202, 4, "OnslaughtRavenPriest_OnDied")