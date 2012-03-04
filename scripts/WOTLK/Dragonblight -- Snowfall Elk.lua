--[[ Dragonblight -- Snowfall Elk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SnowfallElk_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallElk_Puncture", 5000, 0)
end

function SnowfallElk_Puncture(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15976, pUnit:GetMainTank()) 
end

function SnowfallElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26615, 1, "SnowfallElk_OnCombat")
RegisterUnitEvent(26615, 2, "SnowfallElk_OnLeaveCombat")
RegisterUnitEvent(26615, 3, "SnowfallElk_OnKilledTarget")
RegisterUnitEvent(26615, 4, "SnowfallElk_OnDied")