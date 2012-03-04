--[[ Bloodmyst Isle -- Blue Flutterer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function BlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueFlutterer_Rake", 10000, 0)
end

function BlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function BlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17349, 1, "BlueFlutterer_OnCombat")
RegisterUnitEvent(17349, 2, "BlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17349, 3, "BlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17349, 4, "BlueFlutterer_OnDied")