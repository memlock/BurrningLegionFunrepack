--[[ Ashenvale -- Felmusk Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskShadowstalker_OverwhelmingStench", 10000, 0)
end

function FelmuskShadowstalker_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3763, 1, "FelmuskShadowstalker_OnCombat")
RegisterUnitEvent(3763, 2, "FelmuskShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3763, 3, "FelmuskShadowstalker_OnKilledTarget")
RegisterUnitEvent(3763, 4, "FelmuskShadowstalker_OnDied")