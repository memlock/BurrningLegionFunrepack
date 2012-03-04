--[[ Shadowmoon Valley -- Elekk Demolisher.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function EDemolisher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("EDemolisher_Stomp", 19000, 0)
end

function EDemolisher_Stomp(pUnit,Event)
	pUnit:CastSpell(38045)
end

function EDemolisher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EDemolisher_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21802, 1, "EDemolisher_OnEnterCombat")
RegisterUnitEvent(21802, 2, "EDemolisher_OnLeaveCombat")
RegisterUnitEvent(21802, 4, "EDemolisher_OnDeath")