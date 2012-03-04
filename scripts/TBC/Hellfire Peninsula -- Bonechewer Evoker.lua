--[[ Hellfire Peninsula -- Bonechewer Evoker.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BCE_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BCE_Fireball", 10000, 0)
end

function BCE_Fireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function BCE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BCE_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19701, 1, "BCE_OnEnterCombat")
RegisterUnitEvent(19701, 2, "BCE_OnLeaveCombat")
RegisterUnitEvent(19701, 4, "BCE_OnDied")