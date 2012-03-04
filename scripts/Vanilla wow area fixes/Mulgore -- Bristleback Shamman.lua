--[[ Mulgore -- Bristleback Shamman.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function BristlebackShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackShaman_LightningBolt", 5000, 0)
end

function BristlebackShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function BristlebackShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2953, 1, "BristlebackShaman_OnCombat")
RegisterUnitEvent(2953, 2, "BristlebackShaman_OnLeaveCombat")
RegisterUnitEvent(2953, 3, "BristlebackShaman_OnKilledTarget")
RegisterUnitEvent(2953, 4, "BristlebackShaman_OnDied")
