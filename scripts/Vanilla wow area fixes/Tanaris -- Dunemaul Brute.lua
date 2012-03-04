--[[ Tanaris -- Dunemaul Brute.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DunemaulBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulBrute_Uppercut", 7000, 0)
end

function DunemaulBrute_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function DunemaulBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5474, 1, "DunemaulBrute_OnCombat")
RegisterUnitEvent(5474, 2, "DunemaulBrute_OnLeaveCombat")
RegisterUnitEvent(5474, 3, "DunemaulBrute_OnKilledTarget")
RegisterUnitEvent(5474, 4, "DunemaulBrute_OnDied")