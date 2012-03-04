--[[ Azshara -- Forest Ooze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ForestOoze_OnCombat(Unit, Event)
Unit:RegisterEvent("ForestOoze_DiseasedSlime", 2000, 2)
end

function ForestOoze_DiseasedSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6907, pUnit:GetMainTank()) 
end

function ForestOoze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForestOoze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForestOoze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8766, 1, "ForestOoze_OnCombat")
RegisterUnitEvent(8766, 2, "ForestOoze_OnLeaveCombat")
RegisterUnitEvent(8766, 3, "ForestOoze_OnKilledTarget")
RegisterUnitEvent(8766, 4, "ForestOoze_OnDied")