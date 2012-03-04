--[[ Ashenvale -- Shadethicket Stone Mover.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ShadethicketStoneMover_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketStoneMover_StrengthofStone", 10000, 0)
end

function ShadethicketStoneMover_StrengthofStone(pUnit, Event) 
pUnit:CastSpell(6864) 
end

function ShadethicketStoneMover_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketStoneMover_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketStoneMover_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3782, 1, "ShadethicketStoneMover_OnCombat")
RegisterUnitEvent(3782, 2, "ShadethicketStoneMover_OnLeaveCombat")
RegisterUnitEvent(3782, 3, "ShadethicketStoneMover_OnKilledTarget")
RegisterUnitEvent(3782, 4, "ShadethicketStoneMover_OnDied")