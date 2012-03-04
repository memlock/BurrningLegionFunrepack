--[[ Shadowmoon Valley -- Greater Felfire Diemetradon.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function GFDiemetradon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("GFDiemetradon_FelFireball", 11000, 0)
	pUnit:RegisterEvent("GFDiemetradon_FlamingWound", 51000, 0)
end

function GFDiemetradon_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37945,pUnit:GetClosestPlayer())
end

function GFDiemetradon_FlamingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function GFDiemetradon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function GFDiemetradon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21462, 1, "GFDiemetradon_OnEnterCombat")
RegisterUnitEvent(21462, 2, "GFDiemetradon_OnLeaveCombat")
RegisterUnitEvent(21462, 4, "GFDiemetradon_OnDied")