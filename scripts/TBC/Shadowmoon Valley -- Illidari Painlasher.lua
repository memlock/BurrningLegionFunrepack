--[[ Shadowmoon Valley -- Illidari Painlasher.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 9th, 2008. ]]

function IPainlasher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IPainlasher_LashOfPain", 4000, 0)
end

function IPainlasher_LashOfPain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15968,pUnit:GetClosestPlayer())
end

function IPainlasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IPainlasher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19800, 1, "IPainlasher_OnEnterCombat")
RegisterUnitEvent(19800, 2, "IPainlasher_OnLeaveCombat")
RegisterUnitEvent(19800, 4, "IPainlasher_OnDied")