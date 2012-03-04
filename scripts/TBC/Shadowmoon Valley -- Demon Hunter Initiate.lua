--[[ Shadowmoon Valley -- Demon Hunter Initiate.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DHInitiate_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DHInitiate_SpellBreaker", 18000, 0)
end

function DHInitiate_SpellBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function DHInitiate_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DHInitiate_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21180, 1, "DHInitiate_OnEnterCombat")
RegisterUnitEvent(21180, 2, "DHInitiate_LeaveCombat")
RegisterUnitEvent(21180, 4, "DHInitiate_OnDied")