--[[ Bloodmyst Isle -- Zarakh.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function Zarakh_OnCombat(Unit, Event)
Unit:RegisterEvent("Zarakh_Poison", 8000, 0)
Unit:RegisterEvent("Zarakh_Web", 10000, 0)
end

function Zarakh_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function Zarakh_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function Zarakh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zarakh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zarakh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17683, 1, "Zarakh_OnCombat")
RegisterUnitEvent(17683, 2, "Zarakh_OnLeaveCombat")
RegisterUnitEvent(17683, 3, "Zarakh_OnKilledTarget")
RegisterUnitEvent(17683, 4, "Zarakh_OnDied")