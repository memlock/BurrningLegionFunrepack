--[[ Grizzly Hills -- Camp Oneqwah Brave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function CampOneqwahBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("CampOneqwahBrave_Cleave", 8000, 0)
end

function CampOneqwahBrave_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function CampOneqwahBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CampOneqwahBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CampOneqwahBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27126, 1, "CampOneqwahBrave_OnCombat")
RegisterUnitEvent(27126, 2, "CampOneqwahBrave_OnLeaveCombat")
RegisterUnitEvent(27126, 3, "CampOneqwahBrave_OnKilledTarget")
RegisterUnitEvent(27126, 4, "CampOneqwahBrave_OnDied")