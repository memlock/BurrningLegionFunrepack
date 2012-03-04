--[[ Shadowmoon Valley -- Demon Hunter Supplicant.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DHSupplicant_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DHSupplicant_Spell", 40000, 0)
end

function DHSupplicant_Spell(pUnit,Event)
	pUnit:CastSpell(37683)
end

function DHSupplicant_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DHSupplicant_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21179, 1, "DHSupplicant_OnEnterCombat")
RegisterUnitEvent(21179, 2, "DHSupplicant_LeaveCombat")
RegisterUnitEvent(21179, 4, "DHSupplicant_OnDied")