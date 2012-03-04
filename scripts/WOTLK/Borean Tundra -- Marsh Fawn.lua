--[[ Borean Tundra -- Marsh Fawn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MarshFawn_OnCombat(Unit, Event)
Unit:RegisterEvent("MarshFawn_Gore", 8000, 0)
end

function MarshFawn_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function MarshFawn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MarshFawn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MarshFawn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25829, 1, "MarshFawn_OnCombat")
RegisterUnitEvent(25829, 2, "MarshFawn_OnLeaveCombat")
RegisterUnitEvent(25829, 3, "MarshFawn_OnKilledTarget")
RegisterUnitEvent(25829, 4, "MarshFawn_OnDied")