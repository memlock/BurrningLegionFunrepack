--[[ Shadowmoon Valley -- Dragonmaw Drake-Rider.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DDrakeRider_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(6660,pUnit:GetClosestPlayer())
end

function DDrakeRider_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DDrakeRider_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21719, 1, "DDrakeRider_OnEnterCombat")
RegisterUnitEvent(21719, 2, "DDrakeRider_LeaveCombat")
RegisterUnitEvent(21719, 4, "DDrakeRider_OnDied")