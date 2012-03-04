--[[ Borean Tundra -- Talramas Abomination.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TalramasAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TalramasAbomination_PlagueCloud", 2000, 2)
end

function TalramasAbomination_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function TalramasAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalramasAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalramasAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25684, 1, "TalramasAbomination_OnCombat")
RegisterUnitEvent(25684, 2, "TalramasAbomination_OnLeaveCombat")
RegisterUnitEvent(25684, 3, "TalramasAbomination_OnKilledTarget")
RegisterUnitEvent(25684, 4, "TalramasAbomination_OnDied")