--[[ Shadowmoon Valley -- Deathforge Summoner.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DSummoner_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DSummoner_ShadowBolt", 10000, 0)
	pUnit:RegisterEvent("DSummoner_ShadowBolt", 16000, 0)
end

function DSummoner_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function DSummoner_FelImmolate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37628,pUnit:GetClosestPlayer())
end

function DSummoner_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

function DSummoner_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(20872, 1, "DSummoner_OnEnterCombat")
RegisterUnitEvent(20872, 2, "DSummoner_LeaveCombat")
RegisterUnitEvent(20872, 4, "DSummoner_OnDeath")