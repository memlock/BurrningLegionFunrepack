--[[ Howling Fjord -- Bloodthirsty Worg.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BloodthirstyWorg_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodthirstyWorg_InfectedBite", 10000, 0)
end

function BloodthirstyWorg_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function BloodthirstyWorg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodthirstyWorg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodthirstyWorg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24475, 1, "BloodthirstyWorg_OnCombat")
RegisterUnitEvent(24475, 2, "BloodthirstyWorg_OnLeaveCombat")
RegisterUnitEvent(24475, 3, "BloodthirstyWorg_OnKilledTarget")
RegisterUnitEvent(24475, 4, "BloodthirstyWorg_OnDied")