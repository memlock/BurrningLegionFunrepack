--[[ Shadowmoon Valley -- Haalum.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function Haalum_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Haalum_Chain", 15000, 0)
	pUnit:RegisterEvent("Haalum_LBolt", 9000, 0)
end

function Haalum_Chain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12058,pUnit:GetClosestPlayer())
end

function Haalum_LBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Haalum_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Haalum_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21711, 1, "Haalum_OnEnterCombat")
RegisterUnitEvent(21711, 2, "Haalum_OnLeaveCombat")
RegisterUnitEvent(21711, 4, "Haalum_OnDied")