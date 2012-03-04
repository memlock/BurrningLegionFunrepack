--[[ Netherstorm -- Cragskaar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Cragskaar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cragskaar_Knock",45000,0)
end

function Cragskaar_Knock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32959, pUnit:GetClosestPlayer())
end

function Cragskaar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cragskaar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20202, 1, "Cragskaar_OnEnterCombat")
RegisterUnitEvent (20202, 2, "Cragskaar_OnLeaveCombat")
RegisterUnitEvent (20202, 4, "Cragskaar_OnDied")