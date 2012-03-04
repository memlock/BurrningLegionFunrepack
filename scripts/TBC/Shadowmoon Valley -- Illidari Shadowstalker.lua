--[[ Shadowmoon Valley -- Illidari Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 10th, 2008. ]]

function IShadowstalker_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7159,pUnit:GetClosestPlayer()) -- Don't Delete!
	pUnit:RegisterEvent("IShadowstalker_Backstab", 8000, 0)
end

function IShadowstalker_Backstab(pUnit,Event)
	pUnit:FullCastSpellOnTarget(7159,pUnit:GetClosestPlayer())
end

function IShadowstalker_Stealth(pUnit,Event)
	pUnit:CastSpell(5916)
end

function IShadowstalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IShadowstalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21337, 1, "IShadowstalker_OnEnterCombat")
RegisterUnitEvent(21337, 6, "IShadowstalker_Stealth")
RegisterUnitEvent(21337, 2, "IShadowstalker_OnLeaveCombat")
RegisterUnitEvent(21337, 4, "IShadowstalker_OnDied")