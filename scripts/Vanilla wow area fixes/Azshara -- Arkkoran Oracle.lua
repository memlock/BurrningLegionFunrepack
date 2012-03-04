--[[ Azshara -- Arkkoran Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ArkkoranOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("ArkkoranOracle_HealingWave", 13000, 0)
Unit:RegisterEvent("ArkkoranOracle_LightningShield", 3000, 0)
Unit:RegisterEvent("ArkkoranOracle_Shock", 5000, 0)
end

function ArkkoranOracle_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function ArkkoranOracle_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function ArkkoranOracle_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11824, pUnit:GetMainTank()) 
end

function ArkkoranOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArkkoranOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArkkoranOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6138, 1, "ArkkoranOracle_OnCombat")
RegisterUnitEvent(6138, 2, "ArkkoranOracle_OnLeaveCombat")
RegisterUnitEvent(6138, 3, "ArkkoranOracle_OnKilledTarget")
RegisterUnitEvent(6138, 4, "ArkkoranOracle_OnDied")