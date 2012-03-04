--[[ Shadowmoon Valley -- Corrupted Water Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CWE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CWE_FBolt", 5000, 0)
end

function CWE_Fbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end

function CWE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CWE_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21428, 1, "CWE_OnEnterCombat")
RegisterUnitEvent(21428, 2, "CWE_OnLeaveCombat")
RegisterUnitEvent(21428, 4, "CWE_OnDied")