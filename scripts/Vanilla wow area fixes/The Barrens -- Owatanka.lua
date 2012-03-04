--[[ The Barrens -- Owatanka.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Owatanka_OnCombat(Unit, Event)
Unit:RegisterEvent("Owatanka_ChainedBolt", 6000, 0)
end

function Owatanka_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Owatanka_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Owatanka_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Owatanka_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3473, 1, "Owatanka_OnCombat")
RegisterUnitEvent(3473, 2, "Owatanka_OnLeaveCombat")
RegisterUnitEvent(3473, 3, "Owatanka_OnKilledTarget")
RegisterUnitEvent(3473, 4, "Owatanka_OnDied")