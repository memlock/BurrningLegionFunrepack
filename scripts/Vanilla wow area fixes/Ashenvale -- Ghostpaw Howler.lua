--[[ Ashenvale -- Ghostpaw Howler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function GhostpawHowler_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostpawHowler_BloodHowl", 1000, 0)
end

function GhostpawHowler_BloodHowl(pUnit, Event) 
pUnit:CastSpell(3264) 
end

function GhostpawHowler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostpawHowler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostpawHowler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3824, 1, "GhostpawHowler_OnCombat")
RegisterUnitEvent(3824, 2, "GhostpawHowler_OnLeaveCombat")
RegisterUnitEvent(3824, 3, "GhostpawHowler_OnKilledTarget")
RegisterUnitEvent(3824, 4, "GhostpawHowler_OnDied")