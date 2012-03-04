--[[ Crystalsong Forest -- Grove Walker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GroveWalker_OnCombat(Unit, Event)
Unit:RegisterEvent("GroveWalker_Rejuvenation", 12000, 0)
Unit:RegisterEvent("GroveWalker_Thorns", 2000, 1)
end

function GroveWalker_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(15981) 
end

function GroveWalker_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function GroveWalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GroveWalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GroveWalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31228, 1, "GroveWalker_OnCombat")
RegisterUnitEvent(31228, 2, "GroveWalker_OnLeaveCombat")
RegisterUnitEvent(31228, 3, "GroveWalker_OnKilledTarget")
RegisterUnitEvent(31228, 4, "GroveWalker_OnDied")