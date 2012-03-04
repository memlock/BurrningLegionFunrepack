--[[ Shadowmoon Valley -- Cyrukh the Firelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function Cyrukh_OnEnterCombat(pUnit,Event)
	pUnit:GetMainTank()
	pUnit:GetAddTank()
	pUnit:RegisterEvent("Cyrukh_Final", 0001, 0)
	pUnit:RegisterEvent("Cyrukh_Trample", 10000, 0)
	pUnit:RegisterEvent("Cyrukh_KnockAway", 22000, 0)
end

function Cyrukh_Final(pUnit,Event)
 if pUnit:GetHealthPct() == 10 then
	pUnit:RegisterEvent("Cyrukh_FinalSpell",  20000, 0)
end
end

function Cyrukh_FinalSpell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39429,pUnit:GetMainTank())
end

function Cyrukh_Trample(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39425,pUnit:GetMainTank())
end

function Cyrukh_KnockAway(pUnit,Event)
	pUnit:FullCastSpellOnTarget(18945,pUnit:GetMainTank())
end

function Cyrukh_Death(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cyrukh_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21181, 1, "Cyrukh_OnEnterCombat")
RegisterUnitEvent(21181, 4, "Cyrukh_Death")
RegisterUnitEvent(21181, 2, "Cyrukh_OnLeaveCombat")