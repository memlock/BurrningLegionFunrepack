--[[ Shadowmoon Valley -- Illidari Overseer.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 9th, 2008. ]]

function IOverseer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IOverseer_MortalStrike", 20000, 0)
	pUnit:RegisterEvent("IOverseer_Rend", 50000, 0)
end

function IOverseer_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function IOverseer_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11977,pUnit:GetClosestPlayer())
end

function IOverseer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IOverseer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21808, 1, "IOverseer_OnEnterCombat")
RegisterUnitEvent(21808, 2, "IOverseer_OnLeaveCombat")
RegisterUnitEvent(21808, 4, "IOverseer_OnDied")