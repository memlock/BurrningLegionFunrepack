--[[ Shadowmoon Valley -- Deathforge Guardian.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DGuardian_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DGuardian_Strike", 9000, 0)
	pUnit:RegisterEvent("DGuardian_Bash", 20000, 0)
end

function DGuardian_Strike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37998,pUnit:GetClosestPlayer())
end

function DGuardian_Bash(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11972,pUnit:GetClosestPlayer())
end

function DGuardian_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DGuardian_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20878, 1, "DGuardian_OnEnterCombat")
RegisterUnitEvent(20878, 1, "DGuardian_OnDied")
RegisterUnitEvent(20878, 1, "DGuardian_LeaveCombat")