--[[ Shadowmoon Valley -- Deathforge Smith.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DSmith_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DSmith_ChaosNova", 6000, 0)
	pUnit:RegisterEvent("DSmith_DrillArmor", 6000, 0)
end

function DSmith_ChaosNova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36225,pUnit:GetClosestPlayer())
end

function DSmith_DrillArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37580,pUnit:GetClosestPlayer())
end

function DSmith_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DSmith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19756, 1, "DSmith_OnEnterCombat")
RegisterUnitEvent(19756, 2, "DSmith_LeaveCombat")
RegisterUnitEvent(19756, 4, "DSmith_OnDied")