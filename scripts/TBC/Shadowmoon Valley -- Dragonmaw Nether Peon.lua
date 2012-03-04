--[[ Shadowmoon Valley -- Dragonmaw Nether Peon.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DNPeon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DNPeon_Spell", 46000, 0)
end

function DNPeon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15572,pUnit:GetClosestPlayer())
end

function DNPeon_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DNPeon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22252, 1, "DNPeon_OnEnterCombat")
RegisterUnitEvent(22252, 2, "DNPeon_LeaveCombat")
RegisterUnitEvent(22252, 4, "DNPeon_OnDied")