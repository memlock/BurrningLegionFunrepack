--[[ Shadowmoon Valley -- Eclipsion Bloodwarder.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function EBloodwarder_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38311)
	pUnit:RegisterEvent("EBloodwarder_BloodLeech", 9000, 0)
end

function EBloodwarder_BloodLeech(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37838,pUnit:GetClosestPlayer())
end

function EBloodwarder_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EBloodwarder_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19806, 1, "EBloodwarder_OnEnterCombat")
RegisterUnitEvent(19806, 2, "EBloodwarder_OnLeaveCombat")
RegisterUnitEvent(19806, 4, "EBloodwarder_OnDied")