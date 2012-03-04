--[[ Howling Fjord -- Blood Shade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BloodShade_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodShade_VexedBloodoftheAncestors", 6000, 0)
end

function BloodShade_VexedBloodoftheAncestors(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49843, pUnit:GetMainTank()) 
end

function BloodShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24872, 1, "BloodShade_OnCombat")
RegisterUnitEvent(24872, 2, "BloodShade_OnLeaveCombat")
RegisterUnitEvent(24872, 3, "BloodShade_OnKilledTarget")
RegisterUnitEvent(24872, 4, "BloodShade_OnDied")