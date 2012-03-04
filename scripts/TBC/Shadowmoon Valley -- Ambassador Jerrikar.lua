--[[ Shadowmoon Valley -- Ambassador Jerrikar.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function Jerrikar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Jerrikar_DarkStrike", 4000, 0)
	pUnit:RegisterEvent("Jerrikar_DiplomaticImmunity", 40000, 0)
	pUnit:RegisterEvent("Jerrikar_Silence", 30000, 0)
end

function Jerrikar_Silence(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38913,GetClosestPlayer())
end

function Jerrikar_DarkStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38926,GetClosestPlayer())
end

function Jerrikar_DiplomaticImmunity(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38916,GetClosestPlayer())
end

function Jerrikar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Jerrikar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18695, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (18695, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (18695, 4, "Alandien_OnDied")