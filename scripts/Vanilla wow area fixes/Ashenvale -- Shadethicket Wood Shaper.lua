--[[ Ashenvale -- Shadethicket Wood Shaper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketWoodShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketWoodShaper_EntanglingRoots", 8000, 0)
end

function ShadethicketWoodShaper_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function ShadethicketWoodShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketWoodShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketWoodShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3781, 1, "ShadethicketWoodShaper_OnCombat")
RegisterUnitEvent(3781, 2, "ShadethicketWoodShaper_OnLeaveCombat")
RegisterUnitEvent(3781, 3, "ShadethicketWoodShaper_OnKilledTarget")
RegisterUnitEvent(3781, 4, "ShadethicketWoodShaper_OnDied")