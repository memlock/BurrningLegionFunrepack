--[[ Dragonblight -- Onslaught Death Knight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtDeathKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeathKnight_BloodPresence", 1000, 1)
Unit:RegisterEvent("OnslaughtDeathKnight_PlagueStrike", 8000, 0)
end

function OnslaughtDeathKnight_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function OnslaughtDeathKnight_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function OnslaughtDeathKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeathKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeathKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27367, 1, "OnslaughtDeathKnight_OnCombat")
RegisterUnitEvent(27367, 2, "OnslaughtDeathKnight_OnLeaveCombat")
RegisterUnitEvent(27367, 3, "OnslaughtDeathKnight_OnKilledTarget")
RegisterUnitEvent(27367, 4, "OnslaughtDeathKnight_OnDied")