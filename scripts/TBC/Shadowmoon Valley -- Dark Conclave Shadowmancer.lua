--[[ Shadowmoon Valley -- Dark Conclave Harbinger.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCShadowmancer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCShadowmancer_ShadowBolt", 13000, 0)
	pUnit:RegisterEvent("DCShadowmancer_DarkMending", 25000, 0)
end

function DCShadowmancer_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpelOnTarget(9613,pUnit:GetClosestPlayer())
end

function DCShadowmancer_DarkMending(pUnit,Event)
	pUnit:FullCastSpelOnTarget(16588,pUnit:GetRandomFriend())
end

function DCShadowmancer_Died(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCShadowmancer_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21384, 1, "DCShadowmancer_OnEnterCombat")
RegisterUnitEvent(21384, 4, "DCShadowmancer_Died")
RegisterUnitEvent(21384, 2, "DCShadowmancer_LeaveCombat")