--[[ Hellfire Peninsula -- Aggonis.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Aggonis_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Aggonis_Corruption", 24000, 0)
end

function Aggonis_Corruption(pUnit,Event)
	pUnit:FullCastSpellOnTarget(21068,pUnit:GetClosestPlayer())
end

function Aggonis_OnEnterCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Aggonis_OnEnterCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (17000, 1, "Aggonis_OnEnterCombat")
RegisterUnitEvent (17000, 2, "Aggonis_OnLeaveCombat")
RegisterUnitEvent (17000, 4, "Aggonis_OnDied")