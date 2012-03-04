--[[ Stonetalon Mountains -- Cliff Stormer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CliffStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffStormer_LizardBolt", 5000, 0)
end

function CliffStormer_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function CliffStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4008, 1, "CliffStormer_OnCombat")
RegisterUnitEvent(4008, 2, "CliffStormer_OnLeaveCombat")
RegisterUnitEvent(4008, 3, "CliffStormer_OnKilledTarget")
RegisterUnitEvent(4008, 4, "CliffStormer_OnDied")