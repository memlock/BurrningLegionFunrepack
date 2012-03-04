--[[ The Barrens -- Thunderhead.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Thunderhead_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderhead_LizardBolt", 6000, 0)
end

function Thunderhead_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Thunderhead_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderhead_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderhead_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3239, 1, "Thunderhead_OnCombat")
RegisterUnitEvent(3239, 2, "Thunderhead_OnLeaveCombat")
RegisterUnitEvent(3239, 3, "Thunderhead_OnKilledTarget")
RegisterUnitEvent(3239, 4, "Thunderhead_OnDied")