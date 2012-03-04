--[[ Shadowmoon Valley -- Anchorite Caalen.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function AnchoriteCaalen_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AnchoriteCaalen_HolySmite", 1540, 0)
	pUnit:RegisterEvent("AnchoriteCaalen_HolySmite", 5000, 0)
end

function AnchoriteCaalen_HolySmite(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36176,pUnit:GetClosestPlayer())
end

function AnchoriteCaalen_GreaterHeal(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35096,pUnit:GetRandomFriend())
end

function AnchoriteCaalen_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AnchoriteCaalen_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22862, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (22862, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (22862, 4, "Alandien_OnDied")