--[[ Shadowmoon Valley -- Captured Water Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function WaterSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("WaterSpirit_Waterbolt", 4300, 0)
end

function Waterspirit_WaterBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(31707,pUnit:GetClosestPlayer())
end

function WaterSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WaterSpirit_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21029, 1, "WaterSpirit_OnEnterCombat")
RegisterUnitEvent(21029, 2, "WaterSpirit_OnLeaveCombat")
RegisterUnitEvent(21029, 4, "WaterSpirit_OnDied")