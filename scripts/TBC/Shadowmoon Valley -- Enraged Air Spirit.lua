--[[ Shadowmoon Valley -- Enraged Air Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function AirSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AirSpirit_Spell1", 11000, 0)
	pUnit:RegisterEvent("AirSpirit_Spell2", 25000, 0)
end

function AirSpirit_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12058,pUnit:GetClosestPlayer())
end

function AirSpirit_Spell2(punit,Event)
	pUnit:FullCastSpellOnTarget(32717,pUnit:GetClosestPlayer())
end

function AirSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AirSpirit_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21060, 1, "AirSpirit_OnEnterCombat")
RegisterUnitEvent(21060, 2, "AirSpirit_OnLeaveCombat")
RegisterUnitEvent(21060, 4, "AirSpirit_OnDeath")