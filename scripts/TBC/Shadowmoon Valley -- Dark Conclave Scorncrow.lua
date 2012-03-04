--[[ Shadowmoon Valley -- Dark Conclave Scorncrow.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCScorncrow_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCScorncrow_FrostBolt", 12000, 0)
end

function DCScorncrow_Frostbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9672,pUnit:GetClosestPlayer())
end


function DCScorncrow_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCScorncrow_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21385, 1, "DCScorncrow_OnEnterCombat")
RegisterUnitEvent(21385, 2, "DCScorncrow_LeaveCombat")
RegisterUnitEvent(21385, 4, "DCScorncrow_OnDied")