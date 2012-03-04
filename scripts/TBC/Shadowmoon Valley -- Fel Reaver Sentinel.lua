--[[ Shadowmoon Valley -- Fel Reaver Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function FRSentinel_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38022)
	pUnit:RegisterEvent("FRSentinel_Boom", 000, 0)
	pUnit:RegisterEvent("FRSentinel_WorldBreaker", 16000, 0)
end

function FRSentinel_Boom(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38052,pUnit:GetClosestPlayer())
end

function FRSentinel_WorldBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38052,pUnit:GetClosestPlayer())
end

function FRSentinel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function FRSentinel_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21949, 1, "FRSentinel_OnEnterCombat")
RegisterUnitEvent(21949, 1, "FRSentinel_OnLeaveCombat")
RegisterUnitEvent(21949, 1, "FRSentinel_OnDeath")