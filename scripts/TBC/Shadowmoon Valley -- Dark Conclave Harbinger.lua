--[[ Shadowmoon Valley -- Dark Conclave Harbinger.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCHarbinger_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCHarbinger_Spell", 13000, 0)
	pUnit:RegisterEvent("DCHarbinger_Heal", 25000, 0)
end

function DCHarbinger_Spell(pUnit,Event)
	pUnit:FullCastSpelOnTarget(15496,pUnit:GetClosestPlayer())
end

function DCHarbinger_Heal(pUnit,Event)
	pUnit:FullCastSpelOnTarget(16588,pUnit:GetRandomFriend())
end

function DCHarbinger_Died(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCHarbinger_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21384, 1, "DCHarbinger_OnEnterCombat")
RegisterUnitEvent(21384, 4, "DCHarbinger_Died")
RegisterUnitEvent(21384, 2, "DCHarbinger_LeaveCombat")