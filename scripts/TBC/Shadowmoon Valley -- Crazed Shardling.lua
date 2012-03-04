--[[ Shadowmoon Valley -- Crazed Shardling.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CShardling_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CShardling_Enrage", 5000, 0)
end

function CShardling_Enrage(pUnit,Event)
	pUnit:CastSpell(40743)
end

function CShardling_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CShardling_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21936, 1, "CMMiner_OnEnterCombat")
RegisterUnitEvent(21936, 2, "CMMiner_OnLeaveCombat")
RegisterUnitEvent(21936, 4, "CMMiner_OnDied")