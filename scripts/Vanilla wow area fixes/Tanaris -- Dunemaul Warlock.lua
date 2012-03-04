--[[ Tanaris -- Dunemaul Warlock.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulWarlock_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulWarlock_Shadowbolt", 8000, 0)
end

function DunemaulWarlock_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function DunemaulWarlock_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulWarlock_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulWarlock_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5475, 1, "DunemaulWarlock_OnCombat")
RegisterUnitEvent(5475, 2, "DunemaulWarlock_OnLeaveCombat")
RegisterUnitEvent(5475, 3, "DunemaulWarlock_OnKilledTarget")
RegisterUnitEvent(5475, 4, "DunemaulWarlock_OnDied")