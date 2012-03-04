--[[ Shadowmoon Valley -- Ashtongue Worker.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function AshtongueWorker_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AshtongueWorker_PierceArmor", 45000, 0)
end

function AshtongueWorker_PierceArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(6016,pUnit:GetClosestPlayer())
end

function AshtongueWorker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AshtongueWorker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21455, 1, "AshtongueWorker_OnEnterCombat")
RegisterUnitEvent (21455, 2, "AshtongueWorker_OnLeaveCombat")
RegisterUnitEvent (21455, 4, "AshtongueWorker_OnDied")