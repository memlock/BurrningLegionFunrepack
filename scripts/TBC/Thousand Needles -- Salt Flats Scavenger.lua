--[[ Thousand Needles -- Salt Flats Scavenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function SaltFlatsScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsScavenger_Execute", 6000, 0)
end

function SaltFlatsScavenger_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4154, 1, "SaltFlatsScavenger_OnCombat")
RegisterUnitEvent(4154, 2, "SaltFlatsScavenger_OnLeaveCombat")
RegisterUnitEvent(4154, 3, "SaltFlatsScavenger_OnKilledTarget")
RegisterUnitEvent(4154, 4, "SaltFlatsScavenger_OnDied")