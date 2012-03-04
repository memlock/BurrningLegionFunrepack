--[[ Ashenvale -- Rotting Slime.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function RottingSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("RottingSlime_DiseasedSlime", 10000, 0)
end

function RottingSlime_DiseasedSlime(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6907, pUnit:GetMainTank()) 
end

function RottingSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RottingSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RottingSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3928, 1, "RottingSlime_OnCombat")
RegisterUnitEvent(3928, 2, "RottingSlime_OnLeaveCombat")
RegisterUnitEvent(3928, 3, "RottingSlime_OnKilledTarget")
RegisterUnitEvent(3928, 4, "RottingSlime_OnDied")