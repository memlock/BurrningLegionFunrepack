--[[ Grizzly Hills -- Tallhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function TallhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("TallhornStag_Gore", 10000, 0)
end

function TallhornStag_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function TallhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TallhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TallhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26363, 1, "TallhornStag_OnCombat")
RegisterUnitEvent(26363, 2, "TallhornStag_OnLeaveCombat")
RegisterUnitEvent(26363, 3, "TallhornStag_OnKilledTarget")
RegisterUnitEvent(26363, 4, "TallhornStag_OnDied")