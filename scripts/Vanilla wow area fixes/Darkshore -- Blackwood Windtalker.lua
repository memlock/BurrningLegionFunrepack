--[[ Darkshore -- Blackwood Windtalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BlackwoodWindtalker_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackwoodWindtalker_GustofWind", 9000, 0)
end

function BlackwoodWindtalker_GustofWind(pUnit, Event) 
pUnit:CastSpell(6982) 
end

function BlackwoodWindtalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackwoodWindtalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackwoodWindtalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2324, 1, "BlackwoodWindtalker_OnCombat")
RegisterUnitEvent(2324, 2, "BlackwoodWindtalker_OnLeaveCombat")
RegisterUnitEvent(2324, 3, "BlackwoodWindtalker_OnKilledTarget")
RegisterUnitEvent(2324, 4, "BlackwoodWindtalker_OnDied")