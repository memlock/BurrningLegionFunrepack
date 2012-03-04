--[[ Shadowmoon Valley -- Eclipsion Cavalier.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ECavalier_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38311)
	pUnit:RegisterEvent("ECavalier_SpellBreaker", 20000, 0)
	pUnit:RegisterEvent("ECavalier_BattleShout", 60000, 0)
end

function ECavalier_SpellBreaker(pUnit,Event)
	pUnit:CastSpell(35871)
end

function ECavalier_BattleShout(pUnit,Event)
	pUnit:CastSpell(30931)
end

function ECavalier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ECavalier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22018, 1, "ECavalier_OnEnterCombat")
RegisterUnitEvent(22018, 2, "ECavalier_OnLeaveCombat")
RegisterUnitEvent(22018, 4, "ECavalier_OnDied")
