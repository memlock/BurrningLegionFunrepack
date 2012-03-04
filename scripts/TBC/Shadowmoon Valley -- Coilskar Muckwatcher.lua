--[[ Shadowmoon Valley -- Coilskar Muckwatcher.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CMuckwatcher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMuckwatcher_BattleShout", 40000, 0)
end

function CMuckwatcher_BattleShout(pUnit,Event)
	pUnit:CastSpell(38232)
end

function CMuckwatcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMuckwatcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19788, 1, "CMuckwatcher_OnEnterCombat")
RegisterUnitEvent(19788, 2, "CMuckwatcher_OnLeaveCombat")
RegisterUnitEvent(19788, 4, "CMuckwatcher_OnDied")