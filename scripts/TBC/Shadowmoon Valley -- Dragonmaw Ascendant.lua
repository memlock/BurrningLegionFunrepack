--[[ Shadowmoon Valley -- Dragonmaw Ascendant.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DAscendant_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DAscendant_Cleave", 40000, 0)
	pUnit:RegisterEvent("DAscendant_MortalStrike", 15000, 0)
	pUnit:RegisterEvent("DAscendant_Uppercut", 23000, 0)
end

function DAscendant_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function DAscendant_MortalStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17547,pUnit:GetClosestPlayer())
end

function DAscendant_Uppercut(pUnit,Event)
	pUnit:FullCastSpellOnTarget(10966,pUnit:GetClosestPlayer())
end

function DAscendant_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DAscendant_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22253, 1, "DAscendant_OnEnterCombat")
RegisterUnitEvent(22253, 2, "DAscendant_LeaveCombat")
RegisterUnitEvent(22253, 4, "DAscendant_OnDied")