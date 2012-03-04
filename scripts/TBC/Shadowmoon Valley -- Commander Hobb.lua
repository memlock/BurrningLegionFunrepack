--[[ Shadowmoon Valley -- Commander Hobb.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function Hobb_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Hobb_Spell1", 10000, 0)
	pUnit:RegisterEvent("Hobb_Spell2", 30000, 0)
end

function Hobb_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41448,pUnit:GetClosestPlayer())
end

function Hobb_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38370,pUnit:GetClosestPlayer())
end

function Hobb_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hobb_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23434, 1, "Hobb_OnEnterCombat")
RegisterUnitEvent(23434, 2, "Hobb_OnLeaveCombat")
RegisterUnitEvent(23434, 4, "Hobb_OnDied")