--[[ Silithus -- Dredge Striker.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function DredgeStriker_OnCombat(Unit, Event)
Unit:RegisterEvent("DredgeStriker_Charge", 8000, 0)
end

function DredgeStriker_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22911, pUnit:GetRandomPlayer(0)) 
end

function DredgeStriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DredgeStriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DredgeStriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11740, 1, "DredgeStriker_OnCombat")
RegisterUnitEvent(11740, 2, "DredgeStriker_OnLeaveCombat")
RegisterUnitEvent(11740, 3, "DredgeStriker_OnKilledTarget")
RegisterUnitEvent(11740, 4, "DredgeStriker_OnDied")