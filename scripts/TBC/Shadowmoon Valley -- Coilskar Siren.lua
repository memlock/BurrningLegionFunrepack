--[[ Shadowmoon Valley -- Coilskar Siren.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CSiren_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CSiren_Spell1", 20000, 0)
	pUnit:RegisterEvent("CSiren_Spell2", 6000, 0)
end

function CSiren_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38026,pUnit:GetClosestPlayer())
end

function CSiren_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32011,pUnit:GetClosestPlayer())
end

function CSiren_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CSiren_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19768,1,"CSiren_OnEnterCombat")
RegisterUnitEvent(19768,2,"CSiren_OnLeaveCombat")
RegisterUnitEvent(19768,4,"CSiren_OnDied")