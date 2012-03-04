--[[ Borean Tundra -- En'kilah Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGhoul_FleshRip", 8000, 0)
end

function EnkilahGhoul_FleshRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38056, pUnit:GetMainTank()) 
end

function EnkilahGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25393, 1, "EnkilahGhoul_OnCombat")
RegisterUnitEvent(25393, 2, "EnkilahGhoul_OnLeaveCombat")
RegisterUnitEvent(25393, 3, "EnkilahGhoul_OnKilledTarget")
RegisterUnitEvent(25393, 4, "EnkilahGhoul_OnDied")