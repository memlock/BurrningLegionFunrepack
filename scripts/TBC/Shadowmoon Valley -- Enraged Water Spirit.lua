--[[ Shadowmoon Valley -- Enraged Water Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function WaterSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("WaterSpirit_Stormbolt", 12000, 0)
end

function WaterSpirit_Stormbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38032,pUnit:GetClosestPlayer())
end

function WaterSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WaterSpirit_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21059, 1, "WaterSpirit_OnEnterCombat")
RegisterUnitEvent(21059, 1, "WaterSpirit_OnLeaveCombat")
RegisterUnitEvent(21059, 1, "WaterSpirit_OnDeath")