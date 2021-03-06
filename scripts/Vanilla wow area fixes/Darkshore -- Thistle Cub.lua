--[[ Darkshore -- Thistle Cub.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function ThistleCub_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistleCub_Ravage", 9000, 0)
end

function ThistleCub_Ravage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3242, pUnit:GetMainTank()) 
end

function ThistleCub_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistleCub_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistleCub_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6789, 1, "ThistleCub_OnCombat")
RegisterUnitEvent(6789, 2, "ThistleCub_OnLeaveCombat")
RegisterUnitEvent(6789, 3, "ThistleCub_OnKilledTarget")
RegisterUnitEvent(6789, 4, "ThistleCub_OnDied")