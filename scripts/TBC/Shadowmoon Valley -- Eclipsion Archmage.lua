--[[ Shadowmoon Valley -- Eclipsion Archmage.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function EArchmage_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("EArchmage_Spell1", 14000, 0)
	pUnit:RegisterEvent("EArchmage_Spell2", 21000, 0)
	pUnit:RegisterEvent("EArchmage_Spell3", 10000, 0)
end

function EArchmage_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37986,pUnit:GetClosestPlayer())
end

function EArchmage_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11829,pUnit:GetClosestPlayer())
end

function EArchmage_Spell3(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13878,pUnit:GetClosestPlayer())
end

function EArchmage_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EArchmage_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19796, 1, "EArchmage_OnEnterCombat")
RegisterUnitEvent(19796, 2, "EArchmage_OnLeaveCombat")
RegisterUnitEvent(19796, 4, "EArchmage_OnDied")