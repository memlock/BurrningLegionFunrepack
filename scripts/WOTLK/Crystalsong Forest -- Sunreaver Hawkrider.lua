--[[ Crystalsong Forest -- Sunreaver Hawkrider.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SunreaverHawkrider_OnCombat(Unit, Event)
Unit:RegisterEvent("SunreaverHawkrider_Shoot", 6000, 0)
end

function SunreaverHawkrider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SunreaverHawkrider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunreaverHawkrider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunreaverHawkrider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30265, 1, "SunreaverHawkrider_OnCombat")
RegisterUnitEvent(30265, 2, "SunreaverHawkrider_OnLeaveCombat")
RegisterUnitEvent(30265, 3, "SunreaverHawkrider_OnKilledTarget")
RegisterUnitEvent(30265, 4, "SunreaverHawkrider_OnDied")