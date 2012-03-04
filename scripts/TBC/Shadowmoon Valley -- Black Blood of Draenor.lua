--[[ Shadowmoon Valley -- Black Blood of Draenor.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 21th, 2008. ]]

function BBOD_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BBOD_Spell", 60000, 0)
end

function BBOD_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7279,pUnit:GetClosestPlayer())
end

function BBOD_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BBOD_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23286, 1, "BBOD_OnEnterCombat")
RegisterUnitEvent (23286, 2, "BBOD_OnLeaveCombat")
RegisterUnitEvent (23286, 4, "BBOD_OnDied")