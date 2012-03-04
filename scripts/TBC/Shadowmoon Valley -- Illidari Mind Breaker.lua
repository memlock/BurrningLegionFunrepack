--[[ Shadowmoon Valley -- Illidari Mind Breaker.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IMBreaker_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IMBreaker_Spell1", 34000, 0)
	pUnit:RegisterEvent("IMBreaker_Spell2", 10000, 0)
	pUnit:RegisterEvent("IMBreaker_Spell3", 41000, 0)

end

function IMBreaker_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38985,pUnit:GetClosestPlayer())
end

function IMBreaker_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17194,pUnit:GetClosestPlayer())
end

function IMBreaker_Spell3(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22884,pUnit:GetClosestPlayer())
end

function IMBreaker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IMBreaker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22074, 1, "IMBreaker_OnEnterCombat")
RegisterUnitEvent(22074, 2, "IMBreaker_OnLeaveCombat")
RegisterUnitEvent(22074, 4, "IMBreaker_OnDied")