--[[ Shadowmoon Valley -- Enslaved Netherwing Whelp.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ENWhelp_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ENWhelp_Spell", 4000, 0)
end

function ENWhelp_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38340,pUnit:GetClosestPlayer())
end

function ENWhelp_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ENWhelp_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21721, 1, "ENWhelp_OnEnterCombat")
RegisterUnitEvent(21721, 1, "ENWhelp_OnLeaveCombat")
RegisterUnitEvent(21721, 1, "ENWhelp_OnDeath")