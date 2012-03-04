--[[ Bloodmyst Isle -- Royal Blue Flutterer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 29th, 2008. ]]

function RoyalBlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("RoyalBlueFlutterer_Rake", 8000, 0)
end

function RoyalBlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function RoyalBlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoyalBlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoyalBlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17350, 1, "RoyalBlueFlutterer_OnCombat")
RegisterUnitEvent(17350, 2, "RoyalBlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17350, 3, "RoyalBlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17350, 4, "RoyalBlueFlutterer_OnDied")