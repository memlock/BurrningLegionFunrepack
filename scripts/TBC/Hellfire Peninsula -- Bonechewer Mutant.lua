--[[ Hellfire Peninsula -- Bonechewer Mutant.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BWM_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34113,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("BWM_Enrage", 120000, 0)
	pUnit:RegisterEvent("BWM_Bite", 240000, 0)
end

function BWM_Bite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34113,pUnit:GetClosestPlayer())
end

function BWM_Enrage(pUnit,Event)
	pUnit:FullCastSpellOnTarget(8599,pUnit:GetClosestPlayer())
end

function BWM_OnNearDeath(pUnit,Event)
 if pUnit:GetHealthPct() == 15 then
	pUnit:CastSpell(34114)
end
end

function BWM_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BWM_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(16876, 1, "BWM_OnEnterCombat")
RegisterUnitEvent(16876, 1, "BWM_OnNearDeath")
RegisterUnitEvent(16876, 2, "BWM_OnLeaveCombat")
RegisterUnitEvent(16876, 4, "BWM_OnDied")