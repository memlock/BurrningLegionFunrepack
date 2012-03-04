--[[ Shadowmoon Valley -- Dragonmaw Skybreaker.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function DSkybreaker_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38858,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("DSkybreaker_Spell1", 24000, 0)
	pUnit:RegisterEvent("DSkybreaker_Spell2", 11000, 0)
end

function DSkybreaker_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38861,pUnit:GetClosestPlayer())
end

function DSkybreaker_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41448,pUnit:GetClosestPlayer())
end

function DSkybreaker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DSkybreaker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22274, 1, "DSkybreaker_OnEnterCombat")
RegisterUnitEvent(22274, 2, "DSkybreaker_OnLeaveCombat")
RegisterUnitEvent(22274, 4, "DSkybreaker_OnDied")