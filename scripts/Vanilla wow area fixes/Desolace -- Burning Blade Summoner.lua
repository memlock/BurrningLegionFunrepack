--[[ Desolace -- Burning Blade Summoner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function BurningBladeSummoner_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeSummoner_ShadowBolt", 8000, 0)
Unit:RegisterEvent("BurningBladeSummoner_SummonImp", 5000, 1)
end

function BurningBladeSummoner_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function BurningBladeSummoner_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BurningBladeSummoner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeSummoner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeSummoner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4668, 1, "BurningBladeSummoner_OnCombat")
RegisterUnitEvent(4668, 2, "BurningBladeSummoner_OnLeaveCombat")
RegisterUnitEvent(4668, 3, "BurningBladeSummoner_OnKilledTarget")
RegisterUnitEvent(4668, 4, "BurningBladeSummoner_OnDied")