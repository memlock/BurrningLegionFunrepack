--[[ Shadowmoon Valley -- Illidari Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 10th, 2008. ]]

function IRavager_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33645,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("IRavager_Cleave", 22000, 0)
	pUnit:RegisterEvent("IRavager_Cutdown", 9000, 0)
	pUnit:RegisterEvent("IRavager_Shout", 60000, 0)
end

function IRavager_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15496,pUnit:GetClosestPlayer())
end

function IRavager_Cutdown(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32009,pUnit:GetClosestPlayer())
end

function IRavager_Shout(pUnit,Event)
	pUnit:CastSpell(16244)
end

function IRavager_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IRavager_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22857, 1, "IRavager_OnEnterCombat")
RegisterUnitEvent(22857, 2, "IRavager_OnLeaveCombat")
RegisterUnitEvent(22857, 4, "IRavager_OnDied")