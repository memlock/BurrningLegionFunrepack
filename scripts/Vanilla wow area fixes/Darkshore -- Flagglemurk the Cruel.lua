--[[ Darkshore -- Flagglemurk the Cruel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function FlagglemurktheCruel_OnCombat(Unit, Event)
Unit:RegisterEvent("FlagglemurktheCruel_Knockdown", 9000, 0)
Unit:RegisterEvent("FlagglemurktheCruel_Strike", 6000, 0)
end

function FlagglemurktheCruel_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function FlagglemurktheCruel_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function FlagglemurktheCruel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FlagglemurktheCruel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FlagglemurktheCruel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7015, 1, "FlagglemurktheCruel_OnCombat")
RegisterUnitEvent(7015, 2, "FlagglemurktheCruel_OnLeaveCombat")
RegisterUnitEvent(7015, 3, "FlagglemurktheCruel_OnKilledTarget")
RegisterUnitEvent(7015, 4, "FlagglemurktheCruel_OnDied")