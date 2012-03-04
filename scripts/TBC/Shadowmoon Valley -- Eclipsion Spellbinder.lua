--[[ Shadowmoon Valley -- Eclipsion Spellbinder.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ESpellbinder_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ESpellbinder_SummonArcane", 11000, (1))
	pUnit:RegisterEvent("ESpellbinder_ArcaneMissle", 16000, 0)
end

function ESpellbinder_SummonArcane(pUnit,Event)
	pUnit:CastSpell(38171)
end

function ESpellbinder_ArcaneMissle(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34447,pUnit:GetClosestPlayer())
end

function ESpellbinder_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ESpellbinder_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22017, 1, "ESpellbinder_OnEnterCombat")
RegisterUnitEvent(22017, 2, "ESpellbinder_OnLeaveCombat")
RegisterUnitEvent(22017, 4, "ESpellbinder_OnDeath")