--[[ Shadowmoon Valley -- Felspine the Greater.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, August, 3th, 2008. ]]

function Felspine_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Felspine_FelFlames", 11000, 0)
	pUnit:RegisterEvent("Felspine_FlamingWound", 46000, 0)
end

function Felspine_FelFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38356,pUnit:GetClosestPlayer())
end

function Felspine_FlamingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function Felspine_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Felspine_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent(21897, 1, "Felspine_OnEnterCombat")
RegisterUnitEvent(21897, 2, "Felspine_OnLeaveCombat")
RegisterUnitEvent(21897, 4, "Felspine_OnDied")