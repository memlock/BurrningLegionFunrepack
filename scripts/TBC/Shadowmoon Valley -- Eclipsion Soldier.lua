--[[ Shadowmoon Valley -- Eclipsion Soldier.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function ESoldier_OnEnterCombat(pUnit,Event)
 if pUnit:GetHealthPct() == 3 then
	pUnit:CastSpell(36476)
end
end

function ESoldier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ESoldier_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22016, 1, "ESoldier_OnEnterCombat")
RegisterUnitEvent(22016, 2, "ESoldier_OnLeaveCombat")
RegisterUnitEvent(22016, 4, "ESoldier_OnDeath")