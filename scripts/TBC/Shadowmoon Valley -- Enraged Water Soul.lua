--[[ Shadowmoon Valley -- Enraged Water Soul.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function WaterSoul_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(35923)
end	

RegisterUnitEvent(21109, 1, "WaterSoul_OnEnterCombat")