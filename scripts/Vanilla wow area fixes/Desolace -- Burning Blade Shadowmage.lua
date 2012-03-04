--[[ Desolace -- Burning Blade Shadowmage.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeShadowmage_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeShadowmage_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeShadowmage_ShadowShell", 10000, 0)
end

function BurningBladeShadowmage_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20816, pUnit:GetMainTank()) 
end

function BurningBladeShadowmage_ShadowShell(pUnit, Event) 
pUnit:CastSpell(9657) 
end

function BurningBladeShadowmage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeShadowmage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeShadowmage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4667, 1, "BurningBladeShadowmage_OnCombat")
RegisterUnitEvent(4667, 2, "BurningBladeShadowmage_OnLeaveCombat")
RegisterUnitEvent(4667, 3, "BurningBladeShadowmage_OnKilledTarget")
RegisterUnitEvent(4667, 4, "BurningBladeShadowmage_OnDied")