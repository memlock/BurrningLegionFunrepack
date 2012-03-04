--[[ Borean Tundra -- Gorloc Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GorlocHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocHunter_ParalyzingSlime", 7000, 0)
end

function GorlocHunter_ParalyzingSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50523, pUnit:GetMainTank()) 
end

function GorlocHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25700, 1, "GorlocHunter_OnCombat")
RegisterUnitEvent(25700, 2, "GorlocHunter_OnLeaveCombat")
RegisterUnitEvent(25700, 3, "GorlocHunter_OnKilledTarget")
RegisterUnitEvent(25700, 4, "GorlocHunter_OnDied")