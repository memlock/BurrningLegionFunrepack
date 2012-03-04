--[[ Shadowmoon Valley -- Enraged Fire Spirit.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function FireSpirit_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(36006)
	pUnit:RegisterEvent("FireSpirit_Enrage", 1000, 0)
	pUnit:RegisterEvent("FireSpirit_FelFireball", 3000, 0)
end

function FireSpirit_Enrage(pUnit,Event)
 if pUnit:GetHealthPct() == 97 then
	pUnit:CastSpell(8599)
end
end

function FireSpirit_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36247,pUnit:GetClosestPlayer())
end

function FireSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function FireSpirit_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21061, 1, "FireSpirit_OnEnterCombat")
RegisterUnitEvent(21061, 2, "FireSpirit_OnLeaveCombat")
RegisterUnitEvent(21061, 4, "FireSpirit_OnDied")