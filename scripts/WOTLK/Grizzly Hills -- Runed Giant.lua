--[[ Grizzly Hills -- Runed Giant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunedGiant_OnCombat(Unit, Event)
Unit:RegisterEvent("RunedGiant_RuneFist", 3000, 1)
Unit:RegisterEvent("RunedGiant_Stomp", 11000, 0)
end

function RunedGiant_RuneFist(pUnit, Event) 
pUnit:CastSpell(49717) 
end

function RunedGiant_Stomp(pUnit, Event) 
pUnit:CastSpell(55196) 
end

function RunedGiant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunedGiant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunedGiant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26417, 1, "RunedGiant_OnCombat")
RegisterUnitEvent(26417, 2, "RunedGiant_OnLeaveCombat")
RegisterUnitEvent(26417, 3, "RunedGiant_OnKilledTarget")
RegisterUnitEvent(26417, 4, "RunedGiant_OnDied")