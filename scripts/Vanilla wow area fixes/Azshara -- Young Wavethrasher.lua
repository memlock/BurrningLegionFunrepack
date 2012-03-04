--[[ Azshara -- Young Wavethrasher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function YoungWavethrasher_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungWavethrasher_Thrash", 5000, 0)
end

function YoungWavethrasher_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function YoungWavethrasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungWavethrasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungWavethrasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6347, 1, "YoungWavethrasher_OnCombat")
RegisterUnitEvent(6347, 2, "YoungWavethrasher_OnLeaveCombat")
RegisterUnitEvent(6347, 3, "YoungWavethrasher_OnKilledTarget")
RegisterUnitEvent(6347, 4, "YoungWavethrasher_OnDied")