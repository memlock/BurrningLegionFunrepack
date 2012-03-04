--[[ Grizzly Hills -- Bloodmoon Servant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function BloodmoonServant_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodmoonServant_Enrage", 10000, 0)
end

function BloodmoonServant_Enrage(pUnit, Event) 
pUnit:CastSpell(32714) 
end

function BloodmoonServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodmoonServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodmoonServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29082, 1, "BloodmoonServant_OnCombat")
RegisterUnitEvent(29082, 2, "BloodmoonServant_OnLeaveCombat")
RegisterUnitEvent(29082, 3, "BloodmoonServant_OnKilledTarget")
RegisterUnitEvent(29082, 4, "BloodmoonServant_OnDied")