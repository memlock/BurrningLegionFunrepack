--[[ Shadowmoon Valley -- Eclipsion Centurion.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ECenturion_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ECenturion_SpellBreaker", 18000, 0)
	pUnit:RegisterEvent("ECenturion_Bloodheal", 1000, 0)
end


function ECenturion_SpellBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function ECenturion_Bloodheal(pUnit,Event)
 if pUnit:GetHealthPct() == 2 then
	pUnit:CastSpell(36476)
end
end

function ECenturion_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ECenturion_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19792, 1, "ECenturion_OnEnterCombat")
RegisterUnitEvent(19792, 2, "ECenturion_OnLeaveCombat")
RegisterUnitEvent(19792, 4, "ECenturion_OnDied")