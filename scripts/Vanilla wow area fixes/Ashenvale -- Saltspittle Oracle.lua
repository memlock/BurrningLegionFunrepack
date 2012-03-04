--[[ Ashenvale -- Saltspittle Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleOracle_HealingWave", 12000, 0)
Unit:RegisterEvent("SaltspittleOracle_Shock", 6000, 0)
end

function SaltspittleOracle_HealingWave(pUnit, Event) 
pUnit:CastSpell(913) 
end

function SaltspittleOracle_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2608, pUnit:GetMainTank()) 
end

function SaltspittleOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3742, 1, "SaltspittleOracle_OnCombat")
RegisterUnitEvent(3742, 2, "SaltspittleOracle_OnLeaveCombat")
RegisterUnitEvent(3742, 3, "SaltspittleOracle_OnKilledTarget")
RegisterUnitEvent(3742, 4, "SaltspittleOracle_OnDied")