--[[ Shadowmoon Valley -- Dragonmaw Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DElite_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38858,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("DElite_Spell1", 36000, 0)
	pUnit:RegisterEvent("DElite_Spell2", 50000, 0)
end

function DElite_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38861,pUnit:GetClosestPlayer())
end

function DElite_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38859,pUnit:GetClosestPlayer())
end

function DElite_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DElite_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22331, 1, "DElite_OnEnterCombat")
RegisterUnitEvent(22331, 2, "DElite_LeaveCombat")
RegisterUnitEvent(22331, 4, "DElite_OnDied")