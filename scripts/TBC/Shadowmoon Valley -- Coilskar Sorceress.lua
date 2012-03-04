--[[ Shadowmoon Valley -- Coilskar Sorceress.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CSorceress_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CSiren_Spell1", 20000, 0)
	pUnit:RegisterEvent("CSiren_Spell2", 6000, 0)
end

function CSorceress_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38026,pUnit:GetClosestPlayer())
end

function CSorceress_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32011,pUnit:GetClosestPlayer())
end

function CSorceress_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CSorceress_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19767,1,"CSorceress_OnEnterCombat")
RegisterUnitEvent(19767,2,"CSorceress_OnLeaveCombat")
RegisterUnitEvent(19767,4,"CSorceress_OnDied")