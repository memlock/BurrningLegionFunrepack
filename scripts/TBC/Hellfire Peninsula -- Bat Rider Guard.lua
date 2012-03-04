--[[ Hellfire Peninsula -- Bat Rider Guard.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 18th, 2008. ]]

function BatRiderGuard_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BatRiderGuard_UnstableConcoction", 22000, 0)
end

function BatRiderGuard_UnstableConcoction(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38066,pUnit:GetClosestPlayer())
end

function BatRiderGuard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BatRiderGuard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (15242, 1, "BatRiderGuard_OnEnterCombat")
RegisterUnitEvent (15242, 2, "BatRiderGuard_OnLeaveCombat")
RegisterUnitEvent (15242, 4, "BatRiderGuard_OnDied")