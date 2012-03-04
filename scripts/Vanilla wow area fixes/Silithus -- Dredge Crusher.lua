--[[ Silithus -- Dredge Crusherlua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function DredgeCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("DredgeCrusher_Lash", 8000, 0)
end

function DredgeCrusher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function DredgeCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DredgeCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DredgeCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11741, 1, "DredgeCrusher_OnCombat")
RegisterUnitEvent(11741, 2, "DredgeCrusher_OnLeaveCombat")
RegisterUnitEvent(11741, 3, "DredgeCrusher_OnKilledTarget")
RegisterUnitEvent(11741, 4, "DredgeCrusher_OnDied")