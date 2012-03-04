--[[ Shadowmoon Valley -- Dragonmaw Nether Drake.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 28th, 2008. ]]

function DNetherDrake_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DNetherDrake_ArcaneBlast", 11000, 0)
end

function DNetherDrake_ArcaneBlast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38344,pUnit:GetClosestPlayer())
end

function DNetherDrake_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DNetherDrake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22000, 1, "DNetherDrake_OnEnterCombat")
RegisterUnitEvent(22000, 2, "DNetherDrake_LeaveCombat")
RegisterUnitEvent(22000, 4, "DNetherDrake_OnDied")