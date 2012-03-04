--[[ Shadowmoon Valley -- Deathforge Tinkerer.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 27th, 2008. ]]

function DTinkerer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DTinkerer_Spell", 23000, 0)
end

function DTinkerer_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38753,pUnit:GetClosestPlayer())
end

function DTinkerer_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DTinkerer_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(38107)
end

RegisterUnitEvent(19754, 1, "DTinkerer_OnEnterCombat")
RegisterUnitEvent(19754, 2, "DTinkerer_LeaveCombat")
RegisterUnitEvent(19754, 4, "DTinkerer_OnDeath")