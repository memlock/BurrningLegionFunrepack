--[[ Dragonblight -- Onslaught Deckhand.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OnslaughtDeckhand_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeckhand_SideKick", 6000, 0)
end

function OnslaughtDeckhand_SideKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50854, pUnit:GetMainTank()) 
end

function OnslaughtDeckhand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeckhand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeckhand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27233, 1, "OnslaughtDeckhand_OnCombat")
RegisterUnitEvent(27233, 2, "OnslaughtDeckhand_OnLeaveCombat")
RegisterUnitEvent(27233, 3, "OnslaughtDeckhand_OnKilledTarget")
RegisterUnitEvent(27233, 4, "OnslaughtDeckhand_OnDied")