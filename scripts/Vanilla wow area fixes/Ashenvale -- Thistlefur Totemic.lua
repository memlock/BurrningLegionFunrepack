--[[ Ashenvale -- Thistlefur Totemic.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThistlefurTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurTotemic_HealingWard", 12000, 0)
end

function ThistlefurTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function ThistlefurTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3922, 1, "ThistlefurTotemic_OnCombat")
RegisterUnitEvent(3922, 2, "ThistlefurTotemic_OnLeaveCombat")
RegisterUnitEvent(3922, 3, "ThistlefurTotemic_OnKilledTarget")
RegisterUnitEvent(3922, 4, "ThistlefurTotemic_OnDied")