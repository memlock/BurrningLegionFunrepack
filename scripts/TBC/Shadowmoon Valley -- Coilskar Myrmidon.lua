--[[ Shadowmoon Valley -- Coilskar Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function CMyrmidon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMyrmidon_Spell", 120000, 0)
end

function CMyrmidon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38027,pUnit:GetClosestPlayer())
end

function CMyrmidon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMyrmidon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent(19765, 1, "CMyrmidon_OnEnterCombat")
RegisterUnitEvent(19765, 2, "CMyrmidon_OnLeaveCombat")
RegisterUnitEvent(19765, 4, "CMyrmidon_OnDied")