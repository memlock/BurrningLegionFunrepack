--[[ Shadowmoon Valley -- Enraged Earth Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function EarthSpirit_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38365)
	pUnit:RegisterEvent("EarthSpirit_Boulder", 8500, 0)
end

function EarthSpirit_Boulder(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38498,pUnit:GetClosestPlayer())
end

function EarthSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function EarthSpirit_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21050, 1, "EarthSpirit_OnEnterCombat")
RegisterUnitEvent(21050, 2, "EarthSpirit_OnLeaveCombat")
RegisterUnitEvent(21050, 4, "EarthSpirit_OnDeath")