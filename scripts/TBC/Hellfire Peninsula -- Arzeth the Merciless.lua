--[[ Hellfire Peninsula -- Arzeth the Merciless.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Arzeth_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Arzeth_MortalStrike", 60000 , 0)
	pUnit:RegisterEvent("Arzeth_ShadowBoltVolley", 10000, 0)
end

function Arzeth_ShadowBoltVolley(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15245,pUnit:GetClosestPlayer())
end

function Arzeth_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16856,pUnit:GetClosestPlayer())
end

function Arzeth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arzeth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19354, 1, "Arzeth_OnEnterCombat")
RegisterUnitEvent (19354, 2, "Arzeth_OnLeaveCombat")
RegisterUnitEvent (19354, 4, "Arzeth_OnDied")