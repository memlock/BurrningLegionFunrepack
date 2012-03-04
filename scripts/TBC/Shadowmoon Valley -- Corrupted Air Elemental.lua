--[[ Shadowmoon Valley -- Corrupted Air Elemental.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CAE_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35194)
	pUnit:RegisterEvent("CAE_LBolt", 5000, 0)
end

function CAE_LBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end


function CAE_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end


function CAE_OnDiedCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21707, 1, "CAE_OnEnterCombat")
RegisterUnitEvent(21707, 2, "CAE_OnLeaveCombat")
RegisterUnitEvent(21707, 4, "CAE_OnDied")
