--[[ Shadowmoon Valley -- Dark Conclave Hawkeye.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCHawkeye_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCHawkeye_Spell", 32000, 0)
end

function DCHawkeye_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37974,pUnit:GetClosestPlayer())
end

function DCHawkeye_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCHawkeye_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21386, 1, "DCHawkeye_OnEnterCombat")
RegisterUnitEvent(21386, 2, "DCHawkeye_OnLeaveCombat")
RegisterUnitEvent(21386, 4, "DCHawkeye_OnDied")