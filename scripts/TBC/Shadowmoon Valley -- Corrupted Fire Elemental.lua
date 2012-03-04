--[[ Shadowmoon Valley -- Corrupted Fire Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CFE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CFE_Fball", 5000, 0)
end

function CFE_Fball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function CFE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CFE_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21706, 1, "CFE_OnEnterCombat")
RegisterUnitEvent(21706, 2, "CFE_OnLeaveCombat")
RegisterUnitEvent(21706, 4, "CFE_OnDied")