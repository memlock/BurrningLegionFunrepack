--[[ Shadowmoon Valley -- Grom'tor, Son of Oronok.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function Gromtor_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(26281,pUnit:GetClosestPlayer()) -- Taunt
	pUnit:RegisterEvent("Gromtor_SunderArmor", 120000, 0)
	pUnit:RegisterEvent("Gromtor_ShieldWall", 22000, 0)
	pUnit:RegisterEvent("Gromtor_ShieldBlock", 40000, 0)
	pUnit:RegisterEvent("Gromtor_HeroicStrike", 4000, 0)
	pUnit:RegisterEvent("Gromtor_BattleShout", 240000, 0)
end

function Gromtor_SunderArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16145,pUnit:GetClosestPlayer())
end

function Gromtor_ShieldWall(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15062,pUnit:GetClosestPlayer())
end

function Gromtor_ShieldBlock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12169,pUnit:GetClosestPlayer())
end

function Gromtor_HeroicStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(29426,pUnit:GetClosestPlayer())
end

function Gromtor_BattleShout(pUnit,Event)
	pUnit:FullCastSpellOnTarget(31403,pUnit:GetClosestPlayer())
end

function Gromtor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Gromtor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21291, 1, "Gromtor_OnEnterCombat")
RegisterUnitEvent(21291, 2, "Gromtor_OnLeaveCombat")
RegisterUnitEvent(21291, 4, "Gromtor_OnDied")