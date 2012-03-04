--[[ Shadowmoon Valley -- Enslaved Netherwing Drake.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ENDrake_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38775)
	pUnit:RegisterEvent("ENDrake_Spell", 13000, 0)
end

function ENDrake_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function ENDrake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ENDrake_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21722, 1, "ENDrake_OnEnterCombat")
RegisterUnitEvent(21722, 2, "ENDrake_OnLeaveCombat")
RegisterUnitEvent(21722, 4, "ENDrake_OnDeath")