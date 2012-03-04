--[[ Grizzly Hills -- Ursus Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function UrsusMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsusMauler_Maul", 5000, 0)
end

function UrsusMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function UrsusMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsusMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsusMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26644, 1, "UrsusMauler_OnCombat")
RegisterUnitEvent(26644, 2, "UrsusMauler_OnLeaveCombat")
RegisterUnitEvent(26644, 3, "UrsusMauler_OnKilledTarget")
RegisterUnitEvent(26644, 4, "UrsusMauler_OnDied")