--[[ Ashenvale -- Thistlefur Avenger.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurAvenger_Vengeance", 13000, 0)
end

function ThistlefurAvenger_Vengeance(pUnit, Event) 
pUnit:CastSpell(8602) 
end

function ThistlefurAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3925, 1, "ThistlefurAvenger_OnCombat")
RegisterUnitEvent(3925, 2, "ThistlefurAvenger_OnLeaveCombat")
RegisterUnitEvent(3925, 3, "ThistlefurAvenger_OnKilledTarget")
RegisterUnitEvent(3925, 4, "ThistlefurAvenger_OnDied")