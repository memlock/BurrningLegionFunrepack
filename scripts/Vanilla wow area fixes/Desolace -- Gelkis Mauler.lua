--[[ Desolace -- Gelkis Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisMauler_Thrash", 5000, 0)
end

function GelkisMauler_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function GelkisMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4652, 1, "GelkisMauler_OnCombat")
RegisterUnitEvent(4652, 2, "GelkisMauler_OnLeaveCombat")
RegisterUnitEvent(4652, 3, "GelkisMauler_OnKilledTarget")
RegisterUnitEvent(4652, 4, "GelkisMauler_OnDied")