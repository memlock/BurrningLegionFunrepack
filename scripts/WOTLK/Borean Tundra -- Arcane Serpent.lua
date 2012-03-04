--[[ Borean Tundra -- Arcane Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ArcaneSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcaneSerpent_ArcaneJolt", 8000, 0)
end

function ArcaneSerpent_ArcaneJolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50504, pUnit:GetMainTank()) 
end

function ArcaneSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcaneSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcaneSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25721, 1, "ArcaneSerpent_OnCombat")
RegisterUnitEvent(25721, 2, "ArcaneSerpent_OnLeaveCombat")
RegisterUnitEvent(25721, 3, "ArcaneSerpent_OnKilledTarget")
RegisterUnitEvent(25721, 4, "ArcaneSerpent_OnDied")