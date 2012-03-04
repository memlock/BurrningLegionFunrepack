--[[ Shadowmoon Valley -- Chancellor Bloodleaf.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function ChancellorBloodleaf_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ChancellorBloodleaf_Spell1", 4000, 0)
	pUnit:RegisterEvent("ChancellorBloodleaf_Spell2", 10000, 0)
end

function ChancellorBloodleaf_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34517,pUnit:GetClosestPlayer())
end

function ChancellorBloodleaf_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15791,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(22012, 1, "ChancellorBloodleaf_OnEnterCombat")
RegisterUnitEvent(22012, 2, "ChancellorBloodleaf_OnLeaveCombat")
RegisterUnitEvent(22012, 4, "ChancellorBloodleaf_OnDied")