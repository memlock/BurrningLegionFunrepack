--[[ Azshara -- Wavethrasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Wavethrasher_OnCombat(Unit, Event)
Unit:RegisterEvent("Wavethrasher_Thrash", 5000, 0)
end

function Wavethrasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Wavethrasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Wavethrasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Wavethrasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6348, 1, "Wavethrasher_OnCombat")
RegisterUnitEvent(6348, 2, "Wavethrasher_OnLeaveCombat")
RegisterUnitEvent(6348, 3, "Wavethrasher_OnKilledTarget")
RegisterUnitEvent(6348, 4, "Wavethrasher_OnDied")