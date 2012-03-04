--[[ Darkshore -- Greymist Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 03th, 2008. ]]


function GreymistOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("GreymistOracle_HealingWave", 13000, 0)
Unit:RegisterEvent("GreymistOracle_LightningBolt", 8000, 0)
end

function GreymistOracle_HealingWave(pUnit, Event) 
pUnit:CastSpell(913) 
end

function GreymistOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function GreymistOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GreymistOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GreymistOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2207, 1, "GreymistOracle_OnCombat")
RegisterUnitEvent(2207, 2, "GreymistOracle_OnLeaveCombat")
RegisterUnitEvent(2207, 3, "GreymistOracle_OnKilledTarget")
RegisterUnitEvent(2207, 4, "GreymistOracle_OnDied")