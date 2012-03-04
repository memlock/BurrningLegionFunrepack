--[[ Shadowmoon Valley -- Crazed Murkblood Miner.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CMMiner_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMMiner_Enrage", 5000, 0)
end

function CMMiner_Enrage(pUnit,Event)
	pUnit:CastSpell(40743)
end

function CMMiner_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMMiner_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23324, 1, "CMMiner_OnEnterCombat")
RegisterUnitEvent(23324, 2, "CMMiner_OnLeaveCombat")
RegisterUnitEvent(23324, 4, "CMMiner_OnDied")