--[[ Azshara -- Storm Bay Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function StormBayOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("StormBayOracle_LightningBolt", 8000, 0)
end

function StormBayOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function StormBayOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StormBayOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StormBayOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6351, 1, "StormBayOracle_OnCombat")
RegisterUnitEvent(6351, 2, "StormBayOracle_OnLeaveCombat")
RegisterUnitEvent(6351, 3, "StormBayOracle_OnKilledTarget")
RegisterUnitEvent(6351, 4, "StormBayOracle_OnDied")