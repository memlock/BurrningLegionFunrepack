--[[ Shadowmoon Valley -- Gryphon Rider Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

-- haha, they throw a hammer at you while you're on a flying mount :P

function GRGuard_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38182,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(15241, 1, "GRGuard_OnEnterCombat")