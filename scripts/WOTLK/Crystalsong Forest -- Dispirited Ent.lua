--[[ Crystalsong Forest -- Dispirited Ent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DispiritedEnt_OnCombat(Unit, Event)
Unit:RegisterEvent("DispiritedEnt_Rejuvenation", 12000, 0)
Unit:RegisterEvent("DispiritedEnt_Thorns", 2000, 1)
end

function DispiritedEnt_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(15981) 
end

function DispiritedEnt_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function DispiritedEnt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DispiritedEnt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DispiritedEnt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31041, 1, "DispiritedEnt_OnCombat")
RegisterUnitEvent(31041, 2, "DispiritedEnt_OnLeaveCombat")
RegisterUnitEvent(31041, 3, "DispiritedEnt_OnKilledTarget")
RegisterUnitEvent(31041, 4, "DispiritedEnt_OnDied")