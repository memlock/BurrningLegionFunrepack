--[[ Shadowmoon Valley -- Dragonmaw Subjugator.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function DSubjugator_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("DSubjugator_Shadowbolt", 9000, 0)
end

function DSubjugator_Shadowbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function DSubjugator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end
function DSubjugator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21718, 1, "DSubjugator_OnEnterCombat")
RegisterUnitEvent(21718, 2, "DSubjugator_OnLeaveCombat")
RegisterUnitEvent(21718, 4, "DSubjugator_OnDied")