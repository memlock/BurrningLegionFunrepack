--[[ Shadowmoon Valley -- Coilskar Defender.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CDefender_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CDefender_Spell1", 7000, 0)
	pUnit:RegisterEvent("CDefender_Spell2", 16000, 0)
end

function CDefender_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38233,pUnit:GetClosestPlayer())
end

function CDefender_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38031,pUnit:GetClosestPlayer())
end

function CDefender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CDefender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19762, 1, "CDefender_OnEnterCombat")
RegisterUnitEvent(19762, 2, "CDefender_OnLeaveCombat")
RegisterUnitEvent(19762, 4, "CDefender_OnDied")