--[[ Borean Tundra -- Festering Ghoul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FesteringGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FesteringGhoul_RotArmor", 10000, 0)
end

function FesteringGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FesteringGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FesteringGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FesteringGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25660, 1, "FesteringGhoul_OnCombat")
RegisterUnitEvent(25660, 2, "FesteringGhoul_OnLeaveCombat")
RegisterUnitEvent(25660, 3, "FesteringGhoul_OnKilledTarget")
RegisterUnitEvent(25660, 4, "FesteringGhoul_OnDied")