--[[ Shadowmoon Valley -- Crazed Murkblood Foreman.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CMForeman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMForeman_Enrage", 5000, 0)
end

function CMForeman_Enrage(pUnit,Event)
	pUnit:CastSpell(40743)
end

function CMForeman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMForeman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23305, 1, "CMForeman_OnEnterCombat")
RegisterUnitEvent(23305, 2, "CMForeman_OnLeaveCombat")
RegisterUnitEvent(23305, 4, "CMForeman_OnDied")