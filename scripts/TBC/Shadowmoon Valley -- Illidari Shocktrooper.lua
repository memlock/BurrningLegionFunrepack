--[[ Shadowmoon Valley -- Illidari Shocktrooper.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 10th, 2008. ]]

function IShocktrooper_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22120,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("IShocktrooper_Cleave", 31000, 0)
end

function IShocktrooper_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function IShocktrooper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IShocktrooper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19802, 1, "IShocktrooper_OnEnterCombat")
RegisterUnitEvent(19802, 2, "IShocktrooper_OnLeaveCombat")
RegisterUnitEvent(19802, 4, "IShocktrooper_OnDied")