--[[ The Barrens -- Boahn.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function Boahn_OnCombat(Unit, Event)
Unit:RegisterEvent("Boahn_LightningBolt", 8000, 0)
end

function Boahn_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function Boahn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Boahn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Boahn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3672, 1, "Boahn_OnCombat")
RegisterUnitEvent(3672, 2, "Boahn_OnLeaveCombat")
RegisterUnitEvent(3672, 3, "Boahn_OnKilledTarget")
RegisterUnitEvent(3672, 4, "Boahn_OnDied")