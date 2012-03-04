--[[ Shadowmoon Valley -- Deathforge Imp.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function Dimp_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Dimp_Firebolt", 6000, 0)
end

function Dimp_Firebolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function Dimp_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimp_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20887, 1, "Dimp_OnEnterCombat")
RegisterUnitEvent(20887, 2, "Dimp_LeaveCombat")
RegisterUnitEvent(20887, 4, "Dimp_OnDied")