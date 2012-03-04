--[[ Shadowmoon Valley -- Illidari Dreadbringer.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function IDreadbringer_OnEnterCombat(pUnit,Event)
 if pUnit:GetHealthPct() == 91 then
	pUnit:FullCastSpellOnTarget(38167,pUnit:GetClosestPlayer())
end
end

RegisterUnitEvent(19799, 1, "IDreadbringer_OnEnterCombat")