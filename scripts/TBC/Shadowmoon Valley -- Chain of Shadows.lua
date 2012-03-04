--[[ Shadowmoon Valley -- Chain of Shadows.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function ChainOfShadows_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ChainOfShadows_Spell", 5500, 0)
end

function ChainOfShadows_Spell(pUnit,Event)
	pUnit:FullCastSPellOnTarget(37784,pUnit:GetClosestPlayer())
end

function ChainOfShadows_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ChainOfShadows_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21876, 1, "ChainOfShadows_OnEnterCombat")
RegisterUnitEvent(21876, 2, "ChainOfShadows_OnLeaveCombat")
RegisterUnitEvent(21876, 4, "ChainOfShadows_OnDied")