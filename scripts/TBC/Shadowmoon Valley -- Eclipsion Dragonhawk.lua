--[[ Shadowmoon Valley -- Eclipsion Dragonhawk.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function EDragonhawk_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("EDragonhawk_Firebreath", 18000, 0)
end

function EDragonhawk_Firebreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37985,pUnit:GetClosestPlayer())
end

function EDragonhawk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EDragonhawk_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20502, 1, "EDragonhawk_OnEnterCombat")
RegisterUnitEvent(20502, 2, "EDragonhawk_OnLeaveCombat")
RegisterUnitEvent(20502, 4, "EDragonhawk_OnDeath")