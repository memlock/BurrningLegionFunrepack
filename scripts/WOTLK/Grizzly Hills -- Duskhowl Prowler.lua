--[[ Grizzly Hills -- Duskhowl Prowler.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DuskhowlProwler_OnCombat(Unit, Event)
Unit:RegisterEvent("DuskhowlProwler_Gore", 10000, 0)
end

function DuskhowlProwler_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function DuskhowlProwler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DuskhowlProwler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DuskhowlProwler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27408, 1, "DuskhowlProwler_OnCombat")
RegisterUnitEvent(27408, 2, "DuskhowlProwler_OnLeaveCombat")
RegisterUnitEvent(27408, 3, "DuskhowlProwler_OnKilledTarget")
RegisterUnitEvent(27408, 4, "DuskhowlProwler_OnDied")