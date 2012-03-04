--[[ Shadowmoon Valley -- Illidari Satyr.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 10th, 2008. ]]

function ISatyr_OnEnterCombat(pUnit,Event)
 if pUnit:GetHealthPct() == 97 then
	pUnit:FullCastSpellOnTarget(38048,pUnit:GetClosestPlayer())
end
end

RegisterUnitEvent(21656, 1, "ISatyr_OnEnterCombat")