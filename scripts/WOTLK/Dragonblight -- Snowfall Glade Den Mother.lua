--[[ Dragonblight -- Snowfall Glade Den Mother.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallGladeDenMother_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeDenMother_Enrage", 10000, 1)
end

function SnowfallGladeDenMother_Enrage(pUnit, Event) 
pUnit:CastSpell(48193) 
end

function SnowfallGladeDenMother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeDenMother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeDenMother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26199, 1, "SnowfallGladeDenMother_OnCombat")
RegisterUnitEvent(26199, 2, "SnowfallGladeDenMother_OnLeaveCombat")
RegisterUnitEvent(26199, 3, "SnowfallGladeDenMother_OnKilledTarget")
RegisterUnitEvent(26199, 4, "SnowfallGladeDenMother_OnDied")