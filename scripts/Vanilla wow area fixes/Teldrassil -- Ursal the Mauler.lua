--[[ Teldrassil -- Ursal the Mauler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function UrsaltheMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("UrsaltheMauler_Maul", 6000, 0)
end

function UrsaltheMauler_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15793, pUnit:GetMainTank()) 
end

function UrsaltheMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UrsaltheMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UrsaltheMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2039, 1, "UrsaltheMauler_OnCombat")
RegisterUnitEvent(2039, 2, "UrsaltheMauler_OnLeaveCombat")
RegisterUnitEvent(2039, 3, "UrsaltheMauler_OnKilledTarget")
RegisterUnitEvent(2039, 4, "UrsaltheMauler_OnDied")