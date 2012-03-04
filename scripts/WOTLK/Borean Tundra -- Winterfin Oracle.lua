--[[ Borean Tundra -- Winterfin Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function WinterfinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("WinterfinOracle_LightningBolt", 8000, 0)
Unit:RegisterEvent("WinterfinOracle_UnstableMagic", 2000, 1)
end

function WinterfinOracle_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function WinterfinOracle_UnstableMagic(pUnit, Event) 
pUnit:CastSpell(50272) 
end

function WinterfinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WinterfinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WinterfinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25216, 1, "WinterfinOracle_OnCombat")
RegisterUnitEvent(25216, 2, "WinterfinOracle_OnLeaveCombat")
RegisterUnitEvent(25216, 3, "WinterfinOracle_OnKilledTarget")
RegisterUnitEvent(25216, 4, "WinterfinOracle_OnDied")