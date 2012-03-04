--[[ Shadowmoon Valley -- Collidus The Warp-Wather.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function Collidus_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38932,pUnit:GetClosestPlayer())
	pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Collidus_FocusedBursts", 40000, 0)
	pUnit:RegisterEvent("Collidus_Scream", 40000, 0)
end

function Collidus_FocusedBursts(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
end

function Collidus_Scream(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34322,pUnit:GetClosestPlayer())
end

function Collidus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Collidus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(18694, 1, "Collidus_OnEnterCombat")
RegisterUnitEvent(18694, 2, "Collidus_OnLeaveCombat")
RegisterUnitEvent(18694, 4, "Collidus_OnDied")