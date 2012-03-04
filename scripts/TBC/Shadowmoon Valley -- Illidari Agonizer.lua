--[[ Shadowmoon Valley -- Illidari Agonizer.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IAgonizer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IAgonizer_Firebolt", 6000, 0)
end

function IAgonizer_Firebolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function IAgonizer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IAgonizer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19801, 1, "IAgonizer_OnEnterCombat")
RegisterUnitEvent(19801, 2, "IAgonizer_OnLeaveCombat")
RegisterUnitEvent(19801, 4, "IAgonizer_OnDied")