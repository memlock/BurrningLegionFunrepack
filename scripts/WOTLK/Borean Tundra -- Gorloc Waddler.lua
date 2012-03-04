--[[ Borean Tundra -- Gorloc Waddler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocWaddler_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocWaddler_GorlocStomp", 7000, 0)
end

function GorlocWaddler_GorlocStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50522, pUnit:GetMainTank()) 
end

function GorlocWaddler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocWaddler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocWaddler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25685, 1, "GorlocWaddler_OnCombat")
RegisterUnitEvent(25685, 2, "GorlocWaddler_OnLeaveCombat")
RegisterUnitEvent(25685, 3, "GorlocWaddler_OnKilledTarget")
RegisterUnitEvent(25685, 4, "GorlocWaddler_OnDied")