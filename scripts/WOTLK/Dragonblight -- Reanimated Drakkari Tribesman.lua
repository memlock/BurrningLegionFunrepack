--[[ Dragonblight -- Reanimated Drakkari Tribesman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function ReanimatedDrakkariTribesman_OnCombat(Unit, Event)
Unit:RegisterEvent("ReanimatedDrakkariTribesman_Cannibalize", 10000, 0)
Unit:RegisterEvent("ReanimatedDrakkariTribesman_CrazedHunger", 6000, 0)
end

function ReanimatedDrakkariTribesman_Cannibalize(pUnit, Event) 
pUnit:CastSpell(50642) 
end

function ReanimatedDrakkariTribesman_CrazedHunger(pUnit, Event) 
pUnit:CastSpell(3151) 
end

function ReanimatedDrakkariTribesman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ReanimatedDrakkariTribesman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ReanimatedDrakkariTribesman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26946, 1, "ReanimatedDrakkariTribesman_OnCombat")
RegisterUnitEvent(26946, 2, "ReanimatedDrakkariTribesman_OnLeaveCombat")
RegisterUnitEvent(26946, 3, "ReanimatedDrakkariTribesman_OnKilledTarget")
RegisterUnitEvent(26946, 4, "ReanimatedDrakkariTribesman_OnDied")