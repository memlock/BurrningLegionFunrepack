--[[ Shadowmoon Valley -- Commander Arcus.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function Arcus_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Arcus_Spell1", 10000, 0)
	pUnit:RegisterEvent("Arcus_Spell2", 30000, 0)
end

function Arcus_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41448,pUnit:GetClosestPlayer())
end

function Arcus_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38370,pUnit:GetClosestPlayer())
end

function Arcus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arcus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23452, 1, "Arcus_OnEnterCombat")
RegisterUnitEvent(23452, 2, "Arcus_OnLeaveCombat")
RegisterUnitEvent(23452, 4, "Arcus_OnDied")