--[[ The Barrens -- Thunderstomp.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Thunderstomp_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderstomp_ChainedBolt", 6000, 0)
end

function Thunderstomp_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Thunderstomp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderstomp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderstomp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5832, 1, "Thunderstomp_OnCombat")
RegisterUnitEvent(5832, 2, "Thunderstomp_OnLeaveCombat")
RegisterUnitEvent(5832, 3, "Thunderstomp_OnKilledTarget")
RegisterUnitEvent(5832, 4, "Thunderstomp_OnDied")