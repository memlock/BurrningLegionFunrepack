--[[ Shadowmoon Valley -- Bonechewer Marauder.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BWM_OnEnterCombat(pUnit,Event)
	pUnit:RegisterUnitEvent("BWM_SnapKick", 10000, 0)
end

function BWM_SnapKick(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39477,pUnit:GetClosestPlayer())
end

function BWM_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BWM_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21245, 1, "BWM_OnEnterCombat")
RegisterUnitEvent(21245, 2, "BWM_OnLeaveCombat")
RegisterUnitEvent(21245, 4, "BWM_OnDied")