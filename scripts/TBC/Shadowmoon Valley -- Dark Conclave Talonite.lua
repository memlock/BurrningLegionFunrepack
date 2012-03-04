--[[ Shadowmoon Valley -- Dark Conclave Talonite.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DCTalonite_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCTalonite_ColdTouch", 18000, 0)
	pUnit:RegisterEvent("DCTalonite_TalonOfJustice", 15000, 0)
end

function DCTalonite_ColdTouch(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39230,pUnit:GetClosestPlayer())
end


function DCTalonite_TalonOfJustice(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39229,pUnit:GetClosestPlayer())
end

function DCTalonite_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCTalonite_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19825, 1, "DCTalonite_OnEnterCombat")
RegisterUnitEvent(19825, 4, "DCTalonite_OnDied")
RegisterUnitEvent(19825, 2, "DCTalonite_OnLeaveCombat")
