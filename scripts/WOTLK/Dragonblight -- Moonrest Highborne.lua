--[[ Dragonblight -- Moonrest Highborne.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MoonrestHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonrestHighborne_ShadowWordDeath", 6000, 0)
end

function MoonrestHighborne_ShadowWordDeath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51818, pUnit:GetMainTank()) 
end

function MoonrestHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonrestHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonrestHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26455, 1, "MoonrestHighborne_OnCombat")
RegisterUnitEvent(26455, 2, "MoonrestHighborne_OnLeaveCombat")
RegisterUnitEvent(26455, 3, "MoonrestHighborne_OnKilledTarget")
RegisterUnitEvent(26455, 4, "MoonrestHighborne_OnDied")