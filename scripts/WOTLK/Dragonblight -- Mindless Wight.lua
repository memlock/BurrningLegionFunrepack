--[[ Dragonblight -- Mindless Wight.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function MindlessWight_OnCombat(Unit, Event)
Unit:RegisterEvent("MindlessWight_Smash", 6000, 0)
end

function MindlessWight_Smash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51334, pUnit:GetMainTank()) 
end

function MindlessWight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MindlessWight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MindlessWight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27287, 1, "MindlessWight_OnCombat")
RegisterUnitEvent(27287, 2, "MindlessWight_OnLeaveCombat")
RegisterUnitEvent(27287, 3, "MindlessWight_OnKilledTarget")
RegisterUnitEvent(27287, 4, "MindlessWight_OnDied")